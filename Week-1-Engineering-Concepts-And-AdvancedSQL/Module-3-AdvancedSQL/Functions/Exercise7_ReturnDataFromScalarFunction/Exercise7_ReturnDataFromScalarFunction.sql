USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Return Annual Salary for EmployeeID = 1
--------------------------------------------------

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary
FROM Employees
WHERE EmployeeID = 1;
GO