CREATE TABLE [dbo].[SDM_Setup_Migration_Transaction_Logs] (
    [TransactionId]          INT            IDENTITY (1, 1) NOT NULL,
    [ProductId]              INT            NULL,
    [ActivityId]             INT            NULL,
    [MigrationStatus]        BIT            NULL,
    [MigratedOn]             DATETIME       NULL,
    [MigratedByUser]         NVARCHAR (20)  NULL,
    [SourceEnvironmentId]    INT            NOT NULL,
    [TargetEnvironmentId]    INT            NOT NULL,
    [Summary]                NVARCHAR (MAX) NOT NULL,
    [SourceBuyerPartnerCode] BIGINT         NOT NULL,
    [TargetBuyerPartnerCode] BIGINT         NOT NULL,
    CONSTRAINT [FK__SDM_Setup__Activ__719CDDE7] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [FK__SDM_Setup__Activ__72910220] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [FK__SDM_Setup__Activ__73852659] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [FK__SDM_Setup__Activ__7C1A6C5A] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [FK__SDM_Setup__Activ__7D0E9093] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [FK__SDM_Setup__Activ__7E02B4CC] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [FK__SDM_Setup__Produ__00DF2177] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    CONSTRAINT [FK__SDM_Setup__Produ__7755B73D] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    CONSTRAINT [FK__SDM_Setup__Produ__7849DB76] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    CONSTRAINT [FK__SDM_Setup__Produ__793DFFAF] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    CONSTRAINT [FK__SDM_Setup__Produ__7EF6D905] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    CONSTRAINT [FK__SDM_Setup__Produ__7FEAFD3E] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[SDM_Products] ([ProductID]),
    CONSTRAINT [fk_source_environment_BPC_id] FOREIGN KEY ([SourceEnvironmentId], [SourceBuyerPartnerCode]) REFERENCES [dbo].[SDM_BuyerEnvironmentMapping] ([EnvironmentId], [BuyerPartnerCode]),
    CONSTRAINT [fk_target_environment_BPC_id] FOREIGN KEY ([TargetEnvironmentId], [TargetBuyerPartnerCode]) REFERENCES [dbo].[SDM_BuyerEnvironmentMapping] ([EnvironmentId], [BuyerPartnerCode])
);



