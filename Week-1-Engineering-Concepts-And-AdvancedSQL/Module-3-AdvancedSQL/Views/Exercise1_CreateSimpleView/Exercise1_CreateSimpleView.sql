USE CognizantAdvancedSQL;
GO

DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;
GO

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    Salary DECIMAL(10,2),
    JoinDate DATE
);

INSERT INTO Departments VALUES
(1,'Human Resources'),
(2,'IT'),
(3,'Finance');

INSERT INTO Employees VALUES
(101,'John','Doe',1,50000,'2022-01-15'),
(102,'Alice','Smith',2,65000,'2021-05-10'),
(103,'Bob','Johnson',3,70000,'2020-08-20');

GO

CREATE VIEW vw_EmployeeBasicInfo
AS
SELECT
    E.EmployeeID,
    E.FirstName,
    E.LastName,
    D.DepartmentName
FROM Employees E
INNER JOIN Departments D
ON E.DepartmentID = D.DepartmentID;
GO

SELECT * FROM vw_EmployeeBasicInfo;