--exec [dbo].[usp_SDM_ResetActivityMigration] 43,'Shinita.T@gep.com',200,4763 
CREATE PROCEDURE [dbo].[usp_SDM_ResetActivityMigration] 
@ActivityId int,
@UserName nvarchar(20),
@TargetEnvironmentId int,
@TargetBPC bigint
AS
BEGIN
DECLARE @usercount int, @entrycheck int
Select @usercount=Count(*) From SDM_Users where UserName=@UserName
If(@usercount Is Null OR @usercount=0)
Begin	
RAISERROR ( 'Unauthorised User',1,1)
 return -1
End
Select @entrycheck=Count(*) from SDM_BuyerEnvironmentActivityMapping where TargetBuyerPartnerCode=@TargetBPC and TargetEnvironmentId=@TargetEnvironmentId and ActivityId=@ActivityId and IsDeleted=0
If(@entrycheck Is Null OR @entrycheck=0)
Begin
RAISERROR ( 'No Migration History found for the activity',1,1)
 return -1
End
Else
Begin
Update SDM_BuyerEnvironmentActivityMapping set IsDeleted=1,ModifiedBy=@UserName,ModifiedOn=GetDate() where  TargetBuyerPartnerCode=@TargetBPC and TargetEnvironmentId=@TargetEnvironmentId and ActivityId=@ActivityId and IsDeleted=0
End
END