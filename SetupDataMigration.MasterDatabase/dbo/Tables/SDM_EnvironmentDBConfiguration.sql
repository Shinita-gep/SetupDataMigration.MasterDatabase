CREATE TABLE [dbo].[SDM_EnvironmentDBConfiguration] (
    [EnvironmentId]      INT            NOT NULL,
    [ConfigDBConnection] VARCHAR (3000) NOT NULL,
    CONSTRAINT [PK_STMIGR_EnvironmentDBConfiguration] PRIMARY KEY CLUSTERED ([EnvironmentId] ASC, [ConfigDBConnection] ASC),
    CONSTRAINT [FK_STMIGR_EnvironmentDBConfig_Environment] FOREIGN KEY ([EnvironmentId]) REFERENCES [dbo].[SDM_Environments] ([EnvironmentId])
);

