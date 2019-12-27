CREATE TABLE [dbo].[SDM_Setup_Migration] (
    [CustomerId]         INT           NULL,
    [ProductId]          INT           NULL,
    [ActivityId]         INT           NULL,
    [MigrationFlag]      NVARCHAR (10) NULL,
    [LastMigratedOn]     DATETIME      NULL,
    [LastMigratedByUser] NVARCHAR (20) NULL,
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

