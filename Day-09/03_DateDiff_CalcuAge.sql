/*
Problem:
Calculate age of employees.

Concepts used:
DATEDIFF

Approach:
Find difference between birth date and current date.

Result:
Returns employee age.
*/

SELECT 
    FirstName,
    BirthDate,
    DATEDIFF(YEAR, BirthDate, GETDATE()) AS age
FROM Sales.Employees;
