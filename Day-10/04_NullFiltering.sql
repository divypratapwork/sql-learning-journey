/*
Problem:
Identify customers with valid scores.

Concepts used:
IS NULL, IS NOT NULL

Approach:
Filter based on NULL condition.

Result:
Returns customers with scores.
*/

SELECT 
    CustomerID,
    FirstName,
    Score
FROM Sales.Customers
WHERE Score IS NOT NULL;
-- WHERE Score IS NULL;
