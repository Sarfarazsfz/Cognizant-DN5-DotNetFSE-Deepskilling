USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Execute User Defined Function
--------------------------------------------------

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary
FROM Employees;
GO