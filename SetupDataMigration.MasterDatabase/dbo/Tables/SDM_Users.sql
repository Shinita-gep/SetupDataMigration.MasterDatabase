CREATE TABLE [dbo].[SDM_Users] (
    [UserId]            INT            NOT NULL,
    [UserName]          NVARCHAR (200) NOT NULL,
    [EmailAddress]      NVARCHAR (254) NULL,
    [IsActive]          BIT            NOT NULL,
    [IsDeleted]         BIT            NOT NULL,
    [FirstName]         NVARCHAR (400) NULL,
    [LastName]          NVARCHAR (100) NULL,
    [UserCreatedBy]     BIGINT         NULL,
    [UserCreatedOn ]    DATETIME       NULL,
    [UserModifiedBy]    BIGINT         NULL,
    [UserModifiedOn]    DATETIME       NULL,
    [Updated_TimeStamp] ROWVERSION     NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

