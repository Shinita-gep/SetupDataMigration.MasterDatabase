CREATE TABLE [dbo].[SDM_Environments] (
    [EnvironmentId]   INT            NOT NULL,
    [EnvironmentName] VARCHAR (1000) NULL,
    [CreatedBy]       NVARCHAR (20)  NOT NULL,
    [CreatedOn]       DATETIME       NOT NULL,
    [ModifiedBy]      NVARCHAR (20)  NULL,
    [ModifiedOn]      DATETIME       NULL,
    [isDeleted]       BIT            CONSTRAINT [DF__SDM_Envir__isDel__19AACF41] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SDM_Environments] PRIMARY KEY CLUSTERED ([EnvironmentId] ASC)
);



