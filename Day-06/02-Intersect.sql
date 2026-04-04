/*
Problem:
Find employees who are also customers.

Concepts used:
INTERSECT

Approach:
Return common records from both tables.

Result:
Returns names present in both tables.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Employees

INTERSECT

SELECT
    FirstName,
    LastName
FROM Sales.Customers;
