CREATE TABLE [dbo].[SDM_Customers] (
    [CustomerID]   INT           IDENTITY (1, 1) NOT NULL,
    [CustomerName] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

