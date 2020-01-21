

--exec [dbo].[usp_SDM_GetActivities] 3  
CREATE PROCEDURE [dbo].[usp_SDM_GetActivities] (    
@ProductId int    
) AS    
BEGIN    
Select a.ActivityId,a.ActivityName    
From SDM_Products p , SDM_Activities a, SDM_ProductActivityMapping mapping    
Where p.ProductID = mapping.ProductId AND     
a.ActivityId = mapping.ActivityId AND     
p.ProductID = @ProductId      
END;