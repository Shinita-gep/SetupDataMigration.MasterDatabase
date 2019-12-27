CREATE TABLE [dbo].[SDM_ActivitySPs] (
    [ActivitySPsId]               INT            NOT NULL,
    [ActivityId]                  INT            NOT NULL,
    [WriteActivitySP]             VARCHAR (200)  NULL,
    [TableName]                   VARCHAR (200)  NULL,
    [TableValueTypeParameterName] NVARCHAR (100) NULL,
    [TableValueType]              NVARCHAR (100) NULL,
    CONSTRAINT [PK_STMIGR_ActivitySPs] PRIMARY KEY CLUSTERED ([ActivitySPsId] ASC)
);

