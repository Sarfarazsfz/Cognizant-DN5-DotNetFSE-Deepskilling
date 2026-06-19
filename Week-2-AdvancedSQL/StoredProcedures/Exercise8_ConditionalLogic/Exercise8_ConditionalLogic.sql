USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create Stored Procedure
--------------------------------------------------

DROP PROCEDURE IF EXISTS sp_GiveBonus;
GO

CREATE PROCEDURE sp_GiveBonus
    @DepartmentID INT,
    @BonusAmount DECIMAL(10,2)
AS
BEGIN

    IF EXISTS (
        SELECT 1
        FROM Employees
        WHERE DepartmentID = @DepartmentID
    )
    BEGIN
        UPDATE Employees
        SET Salary = Salary + @BonusAmount
        WHERE DepartmentID = @DepartmentID;

        PRINT 'Bonus Applied Successfully';
    END
    ELSE
    BEGIN
        PRINT 'Department Not Found';
    END

END;
GO

--------------------------------------------------
-- Execute Procedure
--------------------------------------------------

EXEC sp_GiveBonus 1, 500.00;
GO

--------------------------------------------------
-- Verify Result
--------------------------------------------------

SELECT *
FROM Employees
WHERE DepartmentID = 1;
GO