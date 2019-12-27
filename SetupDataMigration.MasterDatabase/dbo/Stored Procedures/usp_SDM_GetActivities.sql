CREATE PROCEDURE [dbo].[usp_SDM_GetActivities] (  
    @product_id int  
) AS  
BEGIN  
Select a.ActivityId,a.ActivityName,a.ActivityDescription   
From SDM_Products p , SDM_Activities a, SDM_ProductActivityMapping mapping  
Where p.ProductID = mapping.ProductId AND   
a.ActivityId = mapping.ActivityId AND   
p.ProductID = @product_id    
END;