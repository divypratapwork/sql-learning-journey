/*
Problem:
Display full name and add bonus to score.

Concepts used:
COALESCE, CONCAT

Approach:
Handle NULL values in LastName and Score.

Result:
Returns full name and updated score.
*/

SELECT 
    CustomerID,
    FirstName,
    LastName,
    Score,
    FirstName + ' ' + COALESCE(LastName, '') AS full_name,
    COALESCE(Score, 0) + 10 AS score_with_bonus
FROM Sales.Customers;
