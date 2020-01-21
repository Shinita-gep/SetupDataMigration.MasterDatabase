  
CREATE PROCEDURE [dbo].[usp_SDM_GetActivitySpParameters](    
@activityId int)    
AS    
BEGIN   
 Select ActivityId, SequenceNumber, WriteActivitySP, TableName, TableValueTypeParameterName, TableValueType
    FROM SDM_ActivitySPs    
    Where ActivityId = @ActivityId  
	ORDER BY SequenceNumber
END