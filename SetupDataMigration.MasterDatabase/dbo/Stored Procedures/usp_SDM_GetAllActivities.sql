CREATE PROCEDURE [dbo].[usp_SDM_GetAllActivities] AS
BEGIN
Select p.ProductID,p.ProductName,a.ActivityId,a.ActivityName,a.ActivityDescription 
From SDM_Products p , SDM_Activities a, SDM_ProductActivityMapping mapping
Where p.ProductID = mapping.ProductId AND 
a.ActivityId = mapping.ActivityId
END