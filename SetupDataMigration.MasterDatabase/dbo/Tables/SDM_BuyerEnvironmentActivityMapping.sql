CREATE TABLE [dbo].[SDM_BuyerEnvironmentActivityMapping] (
    [BuyerEnvironmentActivityMappingID] INT           IDENTITY (1, 1) NOT NULL,
    [ActivityID ]                       INT           NULL,
    [MigrationStatus]                   BIT           NOT NULL,
    [TargetEnvironmentId]               INT           NOT NULL,
    [TargetBuyerPartnerCode]            BIGINT        NOT NULL,
    [CreatedBy]                         NVARCHAR (20) NOT NULL,
    [CreatedOn]                         DATETIME      NOT NULL,
    [ModifiedBy]                        NVARCHAR (20) NULL,
    [ModifiedOn]                        DATETIME      NULL,
    [isDeleted]                         BIT           CONSTRAINT [DF__SDM_Buyer__isDel__24285DB4] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK__SDM_Buye__4632E347C3F602C3] PRIMARY KEY CLUSTERED ([BuyerEnvironmentActivityMappingID] ASC),
    CONSTRAINT [FK__SDM_Buyer__Activ__2610A626] FOREIGN KEY ([ActivityID ]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [fk_environment_BPC_id] FOREIGN KEY ([TargetEnvironmentId], [TargetBuyerPartnerCode]) REFERENCES [dbo].[SDM_BuyerEnvironmentMapping] ([EnvironmentId], [BuyerPartnerCode])
);

