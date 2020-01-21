--Author:Pranav Deo         
--Create date:16/Jan/2020 
--Description: Sp to authorize user.
--Modify By: Pranav Deo
--Last Modified Date: 16/Jan/2020
--Changes(if any): 
--exec [dbo].[usp_SDM_UserAuthorization] "Shinita.T@gep.com"
CREATE PROCEDURE [dbo].[usp_SDM_UserAuthorization]
@UserName nvarchar(20)
AS
BEGIN
DECLARE @usercount int
Select @usercount=Count(*) From SDM_Users where UserName=@UserName
If(@usercount Is Null OR @usercount=0)
Begin	

 Select 0;

End
Else
Begin
Select 1;
End
END