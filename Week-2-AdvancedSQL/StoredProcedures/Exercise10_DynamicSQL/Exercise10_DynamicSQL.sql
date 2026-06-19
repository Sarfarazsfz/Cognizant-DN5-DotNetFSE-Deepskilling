USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Stored Procedure with Dynamic SQL
--------------------------------------------------

DROP PROCEDURE IF EXISTS sp_GetEmployeesDynamic;
GO

CREATE PROCEDURE sp_GetEmployeesDynamic
    @FilterColumn VARCHAR(50),
    @FilterValue VARCHAR(100)
AS
BEGIN

    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL =
    'SELECT *
     FROM Employees
     WHERE ' + QUOTENAME(@FilterColumn) + ' = @Value';

    EXEC sp_executesql
        @SQL,
        N'@Value VARCHAR(100)',
        @Value = @FilterValue;

END;
GO

--------------------------------------------------
-- Execute Procedure
--------------------------------------------------

EXEC sp_GetEmployeesDynamic
    'FirstName',
    'John';
GO