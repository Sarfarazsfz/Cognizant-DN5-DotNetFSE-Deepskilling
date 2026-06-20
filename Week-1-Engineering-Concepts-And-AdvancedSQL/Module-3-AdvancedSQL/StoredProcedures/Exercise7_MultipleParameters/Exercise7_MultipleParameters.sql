USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Stored Procedure
--------------------------------------------------

DROP PROCEDURE IF EXISTS sp_UpdateEmployeeSalary;
GO

CREATE PROCEDURE sp_UpdateEmployeeSalary
    @EmployeeID INT,
    @Salary DECIMAL(10,2)
AS
BEGIN
    UPDATE Employees
    SET Salary = @Salary
    WHERE EmployeeID = @EmployeeID;
END;
GO

--------------------------------------------------
-- Execute Stored Procedure
--------------------------------------------------

EXEC sp_UpdateEmployeeSalary 1, 5500.00;
GO

--------------------------------------------------
-- Verify Update
--------------------------------------------------

SELECT *
FROM Employees
WHERE EmployeeID = 1;
GO