CREATE TABLE [dbo].[SDM_Setup_Migration_Transaction_Logs] (
    [CustomerId]          INT           NULL,
    [ProductId]           INT           NULL,
    [ActivityId]          INT           NULL,
    [MigrationStatus]     NVARCHAR (10) NULL,
    [MigratedOn]          DATETIME      NULL,
    [MigratedByUser]      NVARCHAR (20) NULL,
    [SourceEnvironmentId] INT           NOT NULL,
    [TargetEnvironmentId] INT           NOT NULL,
    [TransactionId]       INT           IDENTITY (1, 1) NOT NULL,
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[SDM_Customers] ([CustomerID]),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[SDM_Customers] ([CustomerID]),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[SDM_Customers] ([CustomerID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID])
);

