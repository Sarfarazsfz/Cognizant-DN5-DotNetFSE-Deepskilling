USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Stored Procedure with Transaction
--------------------------------------------------

DROP PROCEDURE IF EXISTS sp_UpdateSalaryWithTransaction;
GO

CREATE PROCEDURE sp_UpdateSalaryWithTransaction
    @EmployeeID INT,
    @NewSalary DECIMAL(10,2)
AS
BEGIN
    BEGIN TRY

        BEGIN TRANSACTION;

        UPDATE Employees
        SET Salary = @NewSalary
        WHERE EmployeeID = @EmployeeID;

        COMMIT TRANSACTION;

        PRINT 'Salary Updated Successfully';

    END TRY

    BEGIN CATCH

        ROLLBACK TRANSACTION;

        PRINT 'Transaction Failed';

    END CATCH
END;
GO

--------------------------------------------------
-- Execute Procedure
--------------------------------------------------

EXEC sp_UpdateSalaryWithTransaction
    2,
    6500.00;
GO

--------------------------------------------------
-- Verify Update
--------------------------------------------------

SELECT *
FROM Employees
WHERE EmployeeID = 2;
GO