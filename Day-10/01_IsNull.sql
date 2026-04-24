/*
Problem:
Find average score of customers including NULL values.

Concepts used:
AVG, ISNULL, WINDOW FUNCTION

Approach:
Replace NULL scores with 0 before calculating average.

Result:
Returns correct average score.
*/

SELECT 
    CustomerID,
    Score,
    AVG(Score) OVER() AS wrong_avg,
    ISNULL(Score, 0) AS data_for_average,
    AVG(ISNULL(Score, 0)) OVER() AS avg_score
FROM Sales.Customers;
