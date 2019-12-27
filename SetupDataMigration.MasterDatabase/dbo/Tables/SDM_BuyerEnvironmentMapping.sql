CREATE TABLE [dbo].[SDM_BuyerEnvironmentMapping] (
    [BuyerEnvironmentId]       INT             IDENTITY (1, 1) NOT NULL,
    [EnvironmentId]            INT             NULL,
    [BuyerPartnerCode]         BIGINT          NULL,
    [DomainName]               VARCHAR (100)   NULL,
    [ClientName]               VARCHAR (100)   NULL,
    [IsDefaultDomain]          BIT             DEFAULT ((0)) NOT NULL,
    [AdminContactCode]         BIGINT          NULL,
    [ClientLogoPath]           NVARCHAR (1000) NULL,
    [ContactCode]              BIGINT          NULL,
    [UserId]                   BIGINT          DEFAULT ((0)) NOT NULL,
    [UserName]                 NVARCHAR (MAX)  NULL,
    [MaxFileSizeForAttachment] BIGINT          DEFAULT ((10240)) NOT NULL,
    CONSTRAINT [PK_STMIGR_BuyerEnvironmentMapping] PRIMARY KEY CLUSTERED ([BuyerEnvironmentId] ASC)
);

