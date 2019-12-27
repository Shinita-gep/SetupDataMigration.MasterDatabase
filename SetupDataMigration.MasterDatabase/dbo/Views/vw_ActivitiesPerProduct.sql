Create view  vw_ActivitiesPerProduct AS (
select p.ProductID,p.ProductName,a.ActivityId,a.ActivityName,a.ActivityDescription From Products p , Activities a, ProductActivityMapping mapping
where p.ProductID = mapping.ProductId and 
a.ActivityId = mapping.ActivityId)