CREATE PROCEDURE [dbo].[usp_SDM_GetActivitySourceTableName](  
@activityId int,
@TableName varchar(200) output)  
AS  
BEGIN 
	Select @TableName = TableName 
    FROM SDM_ActivitySPs  
    Where ActivityId = @ActivityId
 END