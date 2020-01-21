CREATE TABLE [dbo].[SDM_ProductActivityMapping] (
    [ProductId]      INT           NULL,
    [ActivityId]     INT           NULL,
    [CreatedBy]      NVARCHAR (20) DEFAULT ('INITIAL-LOAD') NOT NULL,
    [CreatedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]     NVARCHAR (20) NULL,
    [ModifiedOn]     DATETIME      NULL,
    [isDeleted]      BIT           DEFAULT ((0)) NOT NULL,
    [SequenceNumber] INT           NULL,
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID])
);



