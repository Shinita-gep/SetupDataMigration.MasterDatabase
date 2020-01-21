CREATE TABLE [dbo].[SDM_Products] (
    [ProductID]   INT           IDENTITY (1, 1) NOT NULL,
    [ProductName] VARCHAR (255) NULL,
    [CreatedOn]   DATETIME      NOT NULL,
    [ModifiedOn]  DATETIME      NULL,
    [ModifiedBy]  NVARCHAR (20) NULL,
    [CreatedBy]   NVARCHAR (20) NOT NULL,
    [isDeleted]   BIT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC)
);



