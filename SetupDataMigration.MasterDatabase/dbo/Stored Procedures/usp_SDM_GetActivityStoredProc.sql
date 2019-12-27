CREATE Procedure [dbo].[usp_SDM_GetActivityStoredProc]
 @ActivityId int  
 As  
  Begin  
    Select  WriteActivitySP  
    FROM SDM_ActivitySPs  
    Where ActivityId = @ActivityId  
  End