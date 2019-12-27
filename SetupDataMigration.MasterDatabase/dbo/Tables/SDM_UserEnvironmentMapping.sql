CREATE TABLE [dbo].[SDM_UserEnvironmentMapping] (
    [UserId]             INT NOT NULL,
    [BuyerEnvironmentId] INT NOT NULL,
    CONSTRAINT [PK_STMIGR_UserEnvironmentMapping] PRIMARY KEY CLUSTERED ([UserId] ASC, [BuyerEnvironmentId] ASC),
    CONSTRAINT [FK_Environment_UserID] FOREIGN KEY ([UserId]) REFERENCES [dbo].[SDM_Users] ([UserId]),
    CONSTRAINT [FK_STMIGR_UserEnvironmentMapping_BuyerEnvironments] FOREIGN KEY ([BuyerEnvironmentId]) REFERENCES [dbo].[SDM_BuyerEnvironmentMapping] ([BuyerEnvironmentId])
);

