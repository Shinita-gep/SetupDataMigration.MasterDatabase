CREATE ROLE [DB_Executor]
    AUTHORIZATION [dbo];


GO
ALTER ROLE [DB_Executor] ADD MEMBER [DEV_Setup_user];

