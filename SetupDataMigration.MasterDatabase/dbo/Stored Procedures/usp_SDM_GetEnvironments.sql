CREATE Procedure [dbo].[usp_SDM_GetEnvironments]    
  As  
   Begin  
     Select EnvironmentId, EnvironmentName from 
      SDM_Environments    
   End