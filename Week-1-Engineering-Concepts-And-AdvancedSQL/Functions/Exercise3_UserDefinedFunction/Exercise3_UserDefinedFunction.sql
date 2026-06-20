USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create User Defined Function
--------------------------------------------------

DROP FUNCTION IF EXISTS fn_CalculateBonus;
GO

CREATE FUNCTION fn_CalculateBonus
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    RETURN @Salary * 0.10;
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
    dbo.fn_CalculateBonus(Salary) AS Bonus
FROM Employees;
GO