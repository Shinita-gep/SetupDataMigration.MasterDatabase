CREATE TABLE [dbo].[SDM_ProductActivityMapping] (
    [ProductId]  INT NULL,
    [ActivityId] INT NULL,
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID])
);

