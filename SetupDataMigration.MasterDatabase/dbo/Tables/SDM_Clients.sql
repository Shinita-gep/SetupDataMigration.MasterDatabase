CREATE TABLE [dbo].[SDM_Clients] (
    [ClientId]   INT           IDENTITY (1, 1) NOT NULL,
    [ClientName] VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_SDM_Clients_1] PRIMARY KEY CLUSTERED ([ClientId] ASC)
);

