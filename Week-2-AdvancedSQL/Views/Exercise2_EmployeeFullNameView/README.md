# Exercise 2: Employee Full Name View

## Objective
Create a SQL View that includes a computed column named `FullName` by concatenating the employee's first name and last name.

## Database Used
CognizantAdvancedSQL

## View Created
`vw_EmployeeFullName`

## SQL Query

```sql
USE CognizantAdvancedSQL;
GO

DROP VIEW IF EXISTS vw_EmployeeFullName;
GO

CREATE VIEW vw_EmployeeFullName
AS
SELECT
    EmployeeID,
    FirstName,
    LastName,
    FirstName + ' ' + LastName AS FullName,
    DepartmentID,
    Salary,
    JoinDate
FROM Employees;
GO

SELECT * FROM vw_EmployeeFullName;
```

## Output

The view displays employee details along with a computed FullName column.

Example:

| EmployeeID | FirstName | LastName | FullName |
|------------|-----------|----------|-----------|
| 101 | John | Doe | John Doe |
| 102 | Alice | Smith | Alice Smith |
| 103 | Bob | Johnson | Bob Johnson |

## Screenshot

Output screenshot saved as:

`Exercise2_Output.png`