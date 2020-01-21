CREATE Procedure [dbo].[usp_SDM_GetClients](
@UserName nvarchar(50)) 
  AS  
  Begin  
  SELECT DISTINCT Client.ClientId, Client.ClientName
  FROM [dbo].[SDM_BuyerEnvironmentMapping] AS Buyer 
  INNER JOIN  [dbo].[SDM_UserEnvironmentActivityMapping] AS UserEnvironment 
  ON Buyer.EnvironmentId = UserEnvironment.TargetEnvironmentId AND Buyer.BuyerPartnerCode = UserEnvironment.TargetBuyerPartnerCode
  INNER JOIN  [dbo].[SDM_Clients] AS Client
  ON Client.ClientId = Buyer.ClientId
  INNER JOIN [dbo].[SDM_Users] AS usr ON usr.UserId = UserEnvironment.UserId 
  WHERE UserName = @UserName
  End