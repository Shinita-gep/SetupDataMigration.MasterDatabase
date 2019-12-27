
CREATE PROCEDURE [dbo].[RM_BaseTableIndex]
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @Table TABLE (
    ID int IDENTITY (1, 1) PRIMARY KEY NOT NULL,
    tablename varchar(100) NOT NULL,
    flag bit DEFAULT 0
  )
  DECLARE @Count int
  DECLARE @Max int
  SET NOCOUNT ON
  --- inserting the tablenames to the table variable.    
  
  INSERT INTO @Table (tablename)  
	select '[' + S.Name + '].[' + IST.NAME + ']' from  sys.tables IST inner join sys.schemas  s on IST.schema_id = s.schema_id
	where IST.temporal_type <> 1
	--and IST.Table_Name NOT LIKE '%Tracking%' 
    AND IST.Name NOT LIKE 'ar_%'
    --AND IST.Name NOT LIKE 'rpt_%' 
    --AND IST.Table_Type LIKE 'base table'
    --AND IST.Table_Name NOT LIKE '%audit%' --??
    --AND IST.TABLE_SCHEMA NOT LIKE '%dmv%'
    AND IST.Name NOT LIKE '%bkp_diff%'
    --AND IST.Table_Name NOT LIKE '%log%'
    --AND IST.Table_Name NOT LIKE '%ANLT%'
    AND IST.Name NOT LIKE '%2017%'
    --AND IST.Table_Name NOT LIKE '%Report%'
    AND IST.Name NOT LIKE '%2018%'
    AND IST.Name NOT LIKE '%2019%'
    AND IST.Name NOT LIKE '%2020%'
	AND IST.Name NOT LIKE '%2014%'
	AND IST.Name NOT LIKE '%2015%'
	AND IST.Name NOT LIKE '%2016%'
	AND IST.Name NOT LIKE '%BKUP%'
	AND IST.Name NOT LIKE '%BAKUP%'
	AND IST.Name NOT LIKE '%BACKUP%'
	and IST.Name NOT LIKE '__RefactorLog'
	and IST.Name NOT LIKE '%ES_SearchIndexerLogs%'
	and IST.Name NOT LIKE '%RE_Logs%'
	and IST.Name NOT LIKE '%RE_Purged_Logs%'
	ORDER BY IST.name
	  
  /*
  INSERT INTO @Table (tablename)
    SELECT
      '[' + IST.TABLE_SCHEMA + '].[' + IST.TABLE_NAME + ']' AS [TableName]
    FROM INFORMATION_SCHEMA.TABLES IST
    WHERE IST.Table_Name NOT LIKE '%Tracking%'
    AND IST.Table_Name NOT LIKE 'ar_%'
    AND IST.Table_Name NOT LIKE 'rpt_%'
    AND IST.Table_Type LIKE 'base table'
    AND IST.Table_Name NOT LIKE '%audit%'
    AND IST.TABLE_SCHEMA NOT LIKE '%dmv%'
    AND IST.Table_Name NOT LIKE '%bkp_diff%'
    AND IST.Table_Name NOT LIKE '%log%'
    AND IST.Table_Name NOT LIKE '%ANLT%'
    AND IST.Table_Name NOT LIKE '%2017%'
    AND IST.Table_Name NOT LIKE '%Report%'
    AND IST.Table_Name NOT LIKE '%2018%'
    AND IST.Table_Name NOT LIKE '%2019%'
    AND IST.Table_Name NOT LIKE '%2020%'

    ORDER BY IST.Table_Name
*/



  SET @Count = 1
  SELECT
    @Max = COUNT(ID)
  FROM @Table
  WHILE (@Count <= @Max)
  BEGIN
    DECLARE @tblname varchar(200)
    SELECT
      @tblname = tablename
    FROM @Table
    WHERE ID = @Count

  BEGIN TRY
    EXEC ('ALTER INDEX ALL ON ' + @tblname + ' REBUILD')
  END TRY
  BEGIN CATCH
    PRINT ('ALTER INDEX ALL ON ' + @tblname + ' REBUILD' + ' ' + ' status : failed')
  END CATCH

    SET @Count = @Count + 1
  END
END



  ;

  ;