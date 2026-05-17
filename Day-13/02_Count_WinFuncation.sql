/*
Problem:
Analyze total counts using window functions.

Concepts used:
COUNT, WINDOW FUNCTION, PARTITION BY

Approach:
Use COUNT() OVER() for total counts
and grouped counts.

Result:
Returns order counts and duplicate checks.
*/

-- Total number of orders

SELECT 
    CONCAT('The Total number of Orders is ', COUNT(*))
        AS no_of_orders
FROM Sales.Orders AS O;


-- Total orders with details

SELECT 
    O.OrderID,
    O.OrderDate,

    COUNT(*) OVER() AS total_no_of_orders

FROM Sales.Orders AS O;


-- Orders per customer

SELECT 
    O.OrderID,
    O.OrderDate,
    O.CustomerID,

    COUNT(*) OVER() AS total_no_of_orders,

    COUNT(*) OVER(
        PARTITION BY O.CustomerID
        ORDER BY O.CustomerID
    ) AS no_of_orders_per_customer

FROM Sales.Orders AS O;


-- Total customers

SELECT
    *,
    COUNT(*) OVER() AS total_customers
FROM Sales.Customers AS C;


-- Count customers with scores

SELECT
    *,
    COUNT(*) OVER() AS total_customers,
    COUNT(Score) OVER() AS no_of_score
FROM Sales.Customers AS C;


-- Check duplicate OrderID

SELECT 
    O.OrderID,

    COUNT(*) OVER(PARTITION BY O.OrderID)
        AS check_pk

FROM Sales.Orders AS O;


-- Duplicate rows in OrdersArchive

SELECT *
FROM
(
    SELECT 
        O.OrderID,

        COUNT(*) OVER(PARTITION BY O.OrderID)
            AS check_pk

    FROM Sales.OrdersArchive AS O
) t
WHERE check_pk > 1;
