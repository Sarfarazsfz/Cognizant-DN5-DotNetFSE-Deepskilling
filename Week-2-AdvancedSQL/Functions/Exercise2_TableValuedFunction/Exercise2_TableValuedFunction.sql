USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Table-Valued Function
--------------------------------------------------

DROP FUNCTION IF EXISTS fn_GetEmployeesByDepartment;
GO

CREATE FUNCTION fn_GetEmployeesByDepartment
(
    @DepartmentID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        EmployeeID,
        FirstName,
        LastName,
        DepartmentID,
        Salary,
        JoinDate
    FROM Employees
    WHERE DepartmentID = @DepartmentID
);
GO

--------------------------------------------------
-- Test Function
--------------------------------------------------

SELECT *
FROM dbo.fn_GetEmployeesByDepartment(3);
GO