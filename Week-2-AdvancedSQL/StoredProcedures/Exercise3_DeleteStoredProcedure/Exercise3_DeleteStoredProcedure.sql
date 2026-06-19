USE CognizantAdvancedSQL;
GO

-- Delete Stored Procedure Created Earlier

DROP PROCEDURE IF EXISTS sp_GetEmployeesByDepartment;
GO

-- Verify Procedure Deleted

EXEC sp_GetEmployeesByDepartment 3;
GO