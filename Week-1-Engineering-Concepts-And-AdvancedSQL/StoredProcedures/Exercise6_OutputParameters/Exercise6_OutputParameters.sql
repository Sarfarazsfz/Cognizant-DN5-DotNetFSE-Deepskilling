USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Stored Procedure with OUTPUT Parameter
--------------------------------------------------

DROP PROCEDURE IF EXISTS sp_GetTotalSalaryByDepartment;
GO

CREATE PROCEDURE sp_GetTotalSalaryByDepartment
    @DepartmentID INT,
    @TotalSalary DECIMAL(18,2) OUTPUT
AS
BEGIN
    SELECT
        @TotalSalary = SUM(Salary)
    FROM Employees
    WHERE DepartmentID = @DepartmentID;
END;
GO

--------------------------------------------------
-- Execute Procedure
--------------------------------------------------

DECLARE @SalaryTotal DECIMAL(18,2);

EXEC sp_GetTotalSalaryByDepartment
    @DepartmentID = 3,
    @TotalSalary = @SalaryTotal OUTPUT;

SELECT @SalaryTotal AS TotalSalary;
GO