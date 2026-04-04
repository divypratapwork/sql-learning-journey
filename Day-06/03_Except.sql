/*
Problem:
Find employees who are not customers.

Concepts used:
EXCEPT

Approach:
Return records from employees that are not in customers.

Result:
Returns employees who are not customers.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Employees

EXCEPT

SELECT
    FirstName,
    LastName
FROM Sales.Customers;
