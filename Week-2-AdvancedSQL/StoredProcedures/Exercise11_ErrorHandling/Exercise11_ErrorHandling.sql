USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Stored Procedure with Error Handling
--------------------------------------------------

DROP PROCEDURE IF EXISTS sp_UpdateEmployeeSalaryWithErrorHandling;
GO

CREATE PROCEDURE sp_UpdateEmployeeSalaryWithErrorHandling
    @EmployeeID INT,
    @NewSalary DECIMAL(10,2)
AS
BEGIN

    BEGIN TRY

        IF NOT EXISTS
        (
            SELECT 1
            FROM Employees
            WHERE EmployeeID = @EmployeeID
        )
        BEGIN
            RAISERROR('Employee ID does not exist.',16,1);
            RETURN;
        END

        UPDATE Employees
        SET Salary = @NewSalary
        WHERE EmployeeID = @EmployeeID;

        PRINT 'Salary Updated Successfully';

    END TRY

    BEGIN CATCH

        PRINT 'Custom Error Message: '
              + ERROR_MESSAGE();

    END CATCH

END;
GO

--------------------------------------------------
-- Execute Procedure
--------------------------------------------------

EXEC sp_UpdateEmployeeSalaryWithErrorHandling
    999,
    8000.00;
GO