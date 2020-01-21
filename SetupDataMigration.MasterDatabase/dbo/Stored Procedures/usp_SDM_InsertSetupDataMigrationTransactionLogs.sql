CREATE PROCEDURE [dbo].[usp_SDM_InsertSetupDataMigrationTransactionLogs]
@ProductId int,
@ActivityId int,
@MigrationStatus bit,
@MigratedByUser nvarchar(20),
@SourceEnvironmentId int,
@SourceBPC bigint,
@TargetEnvironmentId int,
@TargetBPC bigint,
@Summary nvarchar(max)
AS
BEGIN
	INSERT INTO [dbo].[SDM_Setup_Migration_Transaction_Logs]
           ([ProductId]
           ,[ActivityId]
           ,[MigrationStatus]
		   ,[MigratedOn]
           ,[MigratedByUser]
           ,[SourceEnvironmentId]
		   ,[SourceBuyerPartnerCode]
           ,[TargetEnvironmentId]
		   ,[TargetBuyerPartnerCode]
		   ,[Summary]
           )
     VALUES
           (@ProductId
           ,@ActivityId
           ,@MigrationStatus
           ,GETDATE()
           ,@MigratedByUser
           ,@SourceEnvironmentId
		   ,@SourceBPC
           ,@TargetEnvironmentId
		   ,@TargetBPC
		   ,@Summary
           )
END