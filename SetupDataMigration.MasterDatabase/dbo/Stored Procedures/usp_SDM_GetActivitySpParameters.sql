
CREATE PROCEDURE [dbo].[usp_SDM_GetActivitySpParameters](  
@activityId int,
@parameterType varchar(200) output,
@parameterName varchar(200) output)  
AS  
BEGIN 
	Select @parameterType = TableValueType,  @parameterName = TableValueTypeParameterName
    FROM SDM_ActivitySPs  
    Where ActivityId = @ActivityId 
END