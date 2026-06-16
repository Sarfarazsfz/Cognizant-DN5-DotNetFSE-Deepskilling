# Exercise 3: Employee Annual Salary View

## Objective
Create a SQL View that includes a computed column named `AnnualSalary` calculated as `Salary * 12`.

## Database Used
CognizantAdvancedSQL

## View Created
`vw_EmployeeAnnualSalary`

## SQL Query

```sql
USE CognizantAdvancedSQL;
GO

DROP VIEW IF EXISTS vw_EmployeeAnnualSalary;
GO

CREATE VIEW vw_EmployeeAnnualSalary
AS
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    Salary * 12 AS AnnualSalary
FROM Employees;
GO

SELECT * FROM vw_EmployeeAnnualSalary;
```

## Output

The view displays employee salary details along with the calculated annual salary.

Example:

| EmployeeID | FirstName | LastName | Salary | AnnualSalary |
|------------|-----------|----------|---------|--------------|
| 101 | John | Doe | 50000.00 | 600000.00 |
| 102 | Alice | Smith | 65000.00 | 780000.00 |
| 103 | Bob | Johnson | 70000.00 | 840000.00 |

## Screenshot

Output screenshot saved as:

`Exercise3_Output.png`