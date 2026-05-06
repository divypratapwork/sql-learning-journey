/*
Problem:
Find average customer score and treat NULL values as 0.

Concepts used:
CASE, ISNULL, AVG, WINDOW FUNCTION

Approach:
Replace NULL scores with 0 before calculating average.

Result:
Returns original and cleaned average scores.
*/

-- Method 1 : Using CASE

SELECT 
    C.CustomerID,
    C.FirstName,
    C.Score,

    AVG(C.Score) OVER() AS avg_score,

    CASE
        WHEN C.Score IS NULL THEN 0
        ELSE C.Score
    END AS updated_score,

    AVG(
        CASE
            WHEN C.Score IS NULL THEN 0
            ELSE C.Score
        END
    ) OVER() AS clean_avg_score

FROM Sales.Customers AS C;


-- Method 2 : Using ISNULL

SELECT 
    C.CustomerID,
    C.FirstName,
    C.Score,

    AVG(C.Score) OVER() AS avg_score,

    ISNULL(C.Score, 0) AS clean_score,

    AVG(ISNULL(C.Score, 0)) OVER() AS clean_avg_score

FROM Sales.Customers AS C;
