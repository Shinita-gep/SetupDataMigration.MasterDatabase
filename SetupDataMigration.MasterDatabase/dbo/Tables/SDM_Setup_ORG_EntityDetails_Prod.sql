CREATE TABLE [dbo].[SDM_Setup_ORG_EntityDetails_Prod] (
    [EntityDetailCode]    BIGINT          IDENTITY (1, 1) NOT NULL,
    [EntityId]            INT             NOT NULL,
    [EntityDisplayName]   NVARCHAR (100)  NOT NULL,
    [EntityCode]          NVARCHAR (50)   NULL,
    [AddressCode]         BIGINT          NULL,
    [EntityDescription]   NVARCHAR (2000) NULL,
    [CompanyCodeId]       INT             NULL,
    [DateStart]           DATETIME        NULL,
    [DateEnd]             DATETIME        NULL,
    [DateCreated]         DATETIME        NULL,
    [CreatedBy]           BIGINT          NULL,
    [DateModified]        DATETIME        NULL,
    [ModifiedBy]          BIGINT          NULL,
    [IsActive]            BIT             NULL,
    [Updated_TimeStamp]   ROWVERSION      NULL,
    [LOBEntityDetailCode] BIGINT          NOT NULL,
    CONSTRAINT [PK_ORG_EntityDetails_Prod] PRIMARY KEY CLUSTERED ([EntityDetailCode] ASC)
);

