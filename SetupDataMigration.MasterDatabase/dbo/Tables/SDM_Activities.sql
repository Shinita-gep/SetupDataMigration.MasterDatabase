CREATE TABLE [dbo].[SDM_Activities] (
    [ActivityId]          INT           IDENTITY (1, 1) NOT NULL,
    [ActivityName]        VARCHAR (255) NULL,
    [ActivityDescription] VARCHAR (255) NULL,
    [CreatedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [ModifiedOn]          DATETIME      NULL,
    [ModifiedBy]          NVARCHAR (20) NULL,
    [CreatedBy]           NVARCHAR (20) DEFAULT ('Initial-Load') NOT NULL,
    PRIMARY KEY CLUSTERED ([ActivityId] ASC)
);

