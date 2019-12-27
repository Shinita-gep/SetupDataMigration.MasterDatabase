CREATE PROCEDURE [dbo].[usp_STMIGR_LogMigrationTransaction](  
@TransactionData tvt_STMIGR_Setup_Migration_Transaction_Logs READONLY)  
 AS  
BEGIN 
INSERT INTO STMIGR_Setup_Migration_Transaction_Logs(  
CustomerId	,ProductId	,ActivityId,	MigrationStatus	,MigratedOn	,MigratedByUser	,SourceEnvironmentId	,TargetEnvironmentId)  
SELECT CustomerId	,ProductId	,ActivityId,	MigrationStatus	,MigratedOn	,MigratedByUser	,SourceEnvironmentId	,TargetEnvironmentId
FROM @TransactionData 
END