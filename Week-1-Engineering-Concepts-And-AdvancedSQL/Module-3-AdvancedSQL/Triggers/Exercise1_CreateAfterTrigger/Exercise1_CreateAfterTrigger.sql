USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Create EmployeeChanges Table
--------------------------------------------------

CREATE TABLE EmployeeChanges
(
    ChangeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    OldSalary DECIMAL(10,2),
    NewSalary DECIMAL(10,2),
    ChangeDate DATETIME DEFAULT GETDATE()
);
GO

--------------------------------------------------
-- Create AFTER UPDATE Trigger
--------------------------------------------------

CREATE TRIGGER trg_AfterSalaryUpdate
ON Employees
AFTER UPDATE
AS
BEGIN
    INSERT INTO EmployeeChanges
    (
        EmployeeID,
        OldSalary,
        NewSalary
    )
    SELECT
        d.EmployeeID,
        d.Salary,
        i.Salary
    FROM deleted d
    INNER JOIN inserted i
        ON d.EmployeeID = i.EmployeeID
    WHERE d.Salary <> i.Salary;
END;
GO

--------------------------------------------------
-- Test Trigger
--------------------------------------------------

UPDATE Employees
SET Salary = 6500
WHERE EmployeeID = 1;
GO

SELECT * FROM EmployeeChanges;
GO