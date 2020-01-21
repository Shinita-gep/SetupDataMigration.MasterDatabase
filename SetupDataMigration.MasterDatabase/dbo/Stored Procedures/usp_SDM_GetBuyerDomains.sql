CREATE PROCEDURE [dbo].[usp_SDM_GetBuyerDomains](
@UserName nvarchar(50), @ClientId int) 
  AS  
   BEGIN
		SELECT DISTINCT Buyer.EnvironmentId, Buyer.BuyerPartnerCode, Buyer.DomainName
		FROM [dbo].[SDM_BuyerEnvironmentMapping] AS Buyer 
		INNER JOIN  [dbo].[SDM_UserEnvironmentActivityMapping] AS UserEnvironment 
		ON Buyer.EnvironmentId = UserEnvironment.TargetEnvironmentId AND Buyer.BuyerPartnerCode = UserEnvironment.TargetBuyerPartnerCode
		INNER JOIN  [dbo].[SDM_Clients] AS Client
		ON Client.ClientId = Buyer.ClientId
		INNER JOIN [dbo].[SDM_Users] AS usr ON usr.UserId = UserEnvironment.UserId   
		WHERE UserName = @UserName AND Buyer.ClientId = @ClientId
		ORDER BY Buyer.EnvironmentId   
   END