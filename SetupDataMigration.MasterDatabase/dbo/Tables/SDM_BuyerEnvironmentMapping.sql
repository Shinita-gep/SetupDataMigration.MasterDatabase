CREATE TABLE [dbo].[SDM_BuyerEnvironmentMapping] (
    [EnvironmentId]    INT           NOT NULL,
    [BuyerPartnerCode] BIGINT        NOT NULL,
    [DomainName]       VARCHAR (100) NULL,
    [ClientId]         INT           CONSTRAINT [DF__SDM_Buyer__Clien__6501FCD8] DEFAULT ((0)) NOT NULL,
    [CreatedBy]        NVARCHAR (20) NOT NULL,
    [CreatedOn]        DATETIME      NOT NULL,
    [ModifiedBy]       NVARCHAR (20) NULL,
    [ModifiedOn]       DATETIME      NULL,
    [isDeleted]        BIT           CONSTRAINT [DF__SDM_Buyer__isDel__18B6AB08] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK__SDM_Buye__2FA6E8CCA9BD86F0] PRIMARY KEY CLUSTERED ([EnvironmentId] ASC, [BuyerPartnerCode] ASC),
    CONSTRAINT [fk_client_id] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[SDM_Clients] ([ClientId]),
    CONSTRAINT [fk_environment_id] FOREIGN KEY ([EnvironmentId]) REFERENCES [dbo].[SDM_Environments] ([EnvironmentId])
);



