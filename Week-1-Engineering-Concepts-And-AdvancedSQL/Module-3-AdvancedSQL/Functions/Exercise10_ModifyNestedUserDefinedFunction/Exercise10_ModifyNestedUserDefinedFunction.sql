USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Modify Bonus Function
--------------------------------------------------

ALTER FUNCTION fn_CalculateBonus
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @Salary * 0.20;
END;
GO

--------------------------------------------------
-- Modify Total Compensation Function
--------------------------------------------------

ALTER FUNCTION fn_CalculateTotalCompensation
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @AnnualSalary DECIMAL(10,2);
    DECLARE @Bonus DECIMAL(10,2);

    SET @AnnualSalary = dbo.fn_CalculateAnnualSalary(@Salary);
    SET @Bonus = dbo.fn_CalculateBonus(@Salary);

    RETURN @AnnualSalary + @Bonus;
END;
GO

--------------------------------------------------
-- Test Modified Function
--------------------------------------------------

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary,
    dbo.fn_CalculateBonus(Salary) AS ModifiedBonus,
    dbo.fn_CalculateTotalCompensation(Salary) AS TotalCompensation
FROM Employees;
GO