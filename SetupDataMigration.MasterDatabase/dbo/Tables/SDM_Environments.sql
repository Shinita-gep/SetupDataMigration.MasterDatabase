CREATE TABLE [dbo].[SDM_Environments] (
    [EnvironmentId]   INT            IDENTITY (1, 1) NOT NULL,
    [EnvironmentName] VARCHAR (1000) NULL,
    CONSTRAINT [PK_SM_Environments] PRIMARY KEY CLUSTERED ([EnvironmentId] ASC)
);

