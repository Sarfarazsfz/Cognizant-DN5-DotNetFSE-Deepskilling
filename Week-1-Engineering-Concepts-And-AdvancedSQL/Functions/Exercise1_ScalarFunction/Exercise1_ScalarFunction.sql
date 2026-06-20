USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Scalar Function
--------------------------------------------------

DROP FUNCTION IF EXISTS fn_CalculateAnnualSalary;
GO

CREATE FUNCTION fn_CalculateAnnualSalary
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    RETURN @Salary * 12;
END;
GO

--------------------------------------------------
-- Test Function
--------------------------------------------------

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary
FROM Employees;
GO