CREATE PROCEDURE [dbo].[usp_SDM_GetAllProducts] AS
BEGIN
Select ProductID,ProductName from SDM_Products
END