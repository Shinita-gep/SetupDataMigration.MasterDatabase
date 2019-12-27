CREATE Procedure [dbo].[usp_SDM_GetCustomer]
  AS
  Begin
  SELECT BuyerEnvironmentId, EnvironmentId, BuyerPartnerCode,DomainName,ClientName FROM SDM_BuyerEnvironmentMapping 
  End