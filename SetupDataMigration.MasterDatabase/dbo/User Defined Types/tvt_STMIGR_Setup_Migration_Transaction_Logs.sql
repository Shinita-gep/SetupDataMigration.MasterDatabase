CREATE TYPE [dbo].[tvt_STMIGR_Setup_Migration_Transaction_Logs] AS TABLE (
    [CustomerId]          INT           NULL,
    [ProductId]           INT           NULL,
    [ActivityId]          INT           NULL,
    [MigrationStatus]     NVARCHAR (10) NULL,
    [MigratedOn]          DATETIME      NULL,
    [MigratedByUser]      NVARCHAR (20) NULL,
    [SourceEnvironmentId] INT           NOT NULL,
    [TargetEnvironmentId] INT           NOT NULL);

