USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create INSTEAD OF DELETE Trigger
--------------------------------------------------

CREATE TRIGGER trg_PreventEmployeeDelete
ON Employees
INSTEAD OF DELETE
AS
BEGIN
    RAISERROR(
        'Deletion of employee records is not allowed.',
        16,
        1
    );
END;
GO

--------------------------------------------------
-- Test Trigger
--------------------------------------------------

DELETE FROM Employees
WHERE EmployeeID = 1;
GO

SELECT * FROM Employees;
GO