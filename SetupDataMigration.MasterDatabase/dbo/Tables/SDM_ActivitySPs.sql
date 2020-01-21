CREATE TABLE [dbo].[SDM_ActivitySPs] (
    [ActivitySPsId]               INT            NOT NULL,
    [ActivityId]                  INT            NOT NULL,
    [SequenceNumber]              INT            NULL,
    [WriteActivitySP]             VARCHAR (200)  NULL,
    [TableName]                   VARCHAR (200)  NULL,
    [TableValueTypeParameterName] NVARCHAR (100) NULL,
    [TableValueType]              NVARCHAR (100) NULL,
    [CreatedBy]                   NVARCHAR (20)  NOT NULL,
    [CreatedOn]                   DATETIME       NOT NULL,
    [ModifiedBy]                  NVARCHAR (20)  NULL,
    [ModifiedOn]                  DATETIME       NULL,
    [isDeleted]                   BIT            NOT NULL,
    CONSTRAINT [PK_STMIGR_ActivitySPs] PRIMARY KEY CLUSTERED ([ActivitySPsId] ASC)
);



