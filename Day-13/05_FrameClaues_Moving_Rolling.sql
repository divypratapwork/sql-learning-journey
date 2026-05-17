/*
Problem:
Calculate moving and rolling averages of sales.

Concepts used:
FRAME CLAUSE, WINDOW FUNCTION

Approach:
Use ORDER BY and ROWS BETWEEN
for moving and rolling calculations.

Result:
Returns moving and rolling averages.
*/

-- Moving average

SELECT 
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    O.Sales,

    AVG(O.Sales)
    OVER(PARTITION BY O.ProductID)
        AS avg_by_product,

    AVG(O.Sales)
    OVER(
        PARTITION BY O.ProductID
        ORDER BY O.OrderDate
    ) AS moving_avg

FROM Sales.Orders AS O;


-- Rolling average including next order

SELECT 
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    O.Sales,

    AVG(O.Sales)
    OVER(PARTITION BY O.ProductID)
        AS avg_by_product,

    AVG(O.Sales)
    OVER(
        PARTITION BY O.ProductID
        ORDER BY O.OrderDate
    ) AS moving_avg,

    AVG(O.Sales)
    OVER(
        PARTITION BY O.ProductID
        ORDER BY O.OrderDate
        ROWS BETWEEN CURRENT ROW
        AND 1 FOLLOWING
    ) AS rolling_avg

FROM Sales.Orders AS O;
