-- exec [dbo].[usp_SDM_GetActivities] 3
--exec [dbo].[usp_SDM_GetActivitiesWithMigrationValidation] 3,111,200
CREATE PROCEDURE [dbo].[usp_SDM_GetActivitiesWithMigrationValidation] (  
    @product_id int,
	@targetbpc bigint,
	@targetenvironment_id int  
) AS  
BEGIN  
Select distinct activity.ActivityId,activity.ActivityName, ISNULL( buyermapping.MigrationStatus,0) as MigrationStatus  ,
buyermapping.CreatedBy as MigratedByUser,buyermapping.CreatedOn as MigratedOn   
From SDM_Products prod 
inner join SDM_ProductActivityMapping mapping  on prod.ProductID = mapping.ProductId AND prod.ProductID = @product_id
inner join SDM_Activities activity on activity.ActivityId = mapping.ActivityId 
left outer join SDM_BuyerEnvironmentActivityMapping buyermapping on activity.ActivityID = buyermapping.ActivityID and buyermapping.IsDeleted=0
and buyermapping.TargetEnvironmentId=@targetenvironment_id and buyermapping.TargetBuyerPartnerCode=@targetbpc 
END;