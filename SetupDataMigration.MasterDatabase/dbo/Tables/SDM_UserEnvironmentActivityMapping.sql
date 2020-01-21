CREATE TABLE [dbo].[SDM_UserEnvironmentActivityMapping] (
    [UserId]                 INT           NOT NULL,
    [TargetEnvironmentId]    INT           NOT NULL,
    [TargetBuyerPartnerCode] BIGINT        NOT NULL,
    [ActivityID ]            INT           NOT NULL,
    [CreatedBy]              NVARCHAR (20) NOT NULL,
    [CreatedOn]              DATETIME      NOT NULL,
    [ModifiedBy]             NVARCHAR (20) NULL,
    [ModifiedOn]             DATETIME      NULL,
    [isDeleted]              BIT           CONSTRAINT [DF__SDM_UserE__isDel__1F63A897] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SDM_UserEnvironmentActivityMapping] PRIMARY KEY CLUSTERED ([ActivityID ] ASC, [TargetEnvironmentId] ASC, [TargetBuyerPartnerCode] ASC, [UserId] ASC),
    CONSTRAINT [FK__SDM_UserE__Activ__214BF109] FOREIGN KEY ([ActivityID ]) REFERENCES [dbo].[SDM_Activities] ([ActivityId]),
    CONSTRAINT [fk_target_user_environment_BPC_id] FOREIGN KEY ([TargetEnvironmentId], [TargetBuyerPartnerCode]) REFERENCES [dbo].[SDM_BuyerEnvironmentMapping] ([EnvironmentId], [BuyerPartnerCode]),
    CONSTRAINT [fk_user_id_mapping] FOREIGN KEY ([UserId]) REFERENCES [dbo].[SDM_Users] ([UserId])
);

