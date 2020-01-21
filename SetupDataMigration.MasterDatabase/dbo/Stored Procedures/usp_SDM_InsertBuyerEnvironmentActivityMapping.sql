CREATE PROCEDURE [dbo].[usp_SDM_InsertBuyerEnvironmentActivityMapping]
@ActivityId int,
@MigrationStatus bit,
@MigratedByUser nvarchar(20),
@TargetEnvironmentId int,
@TargetBPC bigint
AS
BEGIN
	INSERT INTO [dbo].[SDM_BuyerEnvironmentActivityMapping]
           ([ActivityID]
           ,[MigrationStatus]
		   ,[CreatedBy]
           ,[CreatedOn]
           ,[TargetEnvironmentId]
		   ,[TargetBuyerPartnerCode]
           )
     VALUES
           (@ActivityId
           ,@MigrationStatus
		   ,@MigratedByUser
           ,GETDATE()
           ,@TargetEnvironmentId
		   ,@TargetBPC
           )
END