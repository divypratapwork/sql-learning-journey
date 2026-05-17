/*
Problem:
Find average sales and average customer scores.

Concepts used:
AVG, WINDOW FUNCTION, PARTITION BY

Approach:
Use AVG() OVER() for overall average
and PARTITION BY for grouped averages.

Result:
Returns overall and grouped averages.
*/

-- Average sales across all orders and product-wise

SELECT 
    O.OrderDate,
    O.OrderID,
    O.Sales,
    O.ProductID,

    AVG(COALESCE(O.Sales, 0)) OVER() AS avg_sales_all_orders,

    AVG(COALESCE(O.Sales, 0))
    OVER(PARTITION BY O.ProductID) AS avg_sales_product_wise

FROM Sales.Orders AS O;


-- Average customer scores

SELECT 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    C.Score,

    AVG(COALESCE(C.Score, 0)) OVER() AS avg_score

FROM Sales.Customers AS C;


-- Customers with score greater than average

SELECT *
FROM
(
    SELECT 
        C.CustomerID,
        C.FirstName,
        C.LastName,
        C.Score,

        AVG(COALESCE(C.Score, 0)) OVER() AS avg_score

    FROM Sales.Customers AS C
) t
WHERE Score > avg_score;
