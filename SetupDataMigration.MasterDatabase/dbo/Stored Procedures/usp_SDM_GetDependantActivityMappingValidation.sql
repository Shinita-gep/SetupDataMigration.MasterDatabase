-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[usp_SDM_GetDependantActivityMappingValidation]
(
    @activity_id int,
	@targetbpc bigint,
	@targetenvironment_id int  
)
AS
BEGIN
	Declare @CanBeMigrated bit;
		IF EXISTS (SELECT * FROM SDM_DependencyMapping WHERE ActivityId = @activity_id)
			Begin 
				DECLARE @DependantActivityId int;
					
				DECLARE CheckMigration CURSOR
				FOR SELECT DependantActivityId FROM SDM_DependencyMapping WHERE ActivityId = @activity_id
 
				OPEN CheckMigration;
					FETCH NEXT FROM CheckMigration INTO @DependantActivityId;
						WHILE @@FETCH_STATUS = 0
						BEGIN
							IF EXISTS (SELECT * FROM SDM_BuyerEnvironmentActivityMapping WHERE ActivityID = @DependantActivityId and TargetBuyerPartnerCode=@targetbpc and TargetEnvironmentId=@targetenvironment_id and isDeleted=0)
								Begin
								Set @CanBeMigrated=1;
								End
							Else
								Begin
								Set  @CanBeMigrated=0;
								End
						END;
 
				CLOSE CheckMigration; 
				DEALLOCATE CheckMigration;	
			End
		ELSE
			Begin
			Set @CanBeMigrated=0 	
			End
SELECT DependantActivityId as ParentActivity, (Select @CanBemigrated) as CanActivityBeMigrated	 FROM SDM_DependencyMapping WHERE ActivityId = @activity_id
END