/*
Problem:
Analyze total sales and sales contribution.

Concepts used:
SUM, WINDOW FUNCTION, PARTITION BY

Approach:
Use SUM() OVER() for total sales
and percentage contribution analysis.

Result:
Returns sales analysis and contribution percentage.
*/

-- Total sales across all orders and products

SELECT 
    O.OrderDate,
    O.OrderID,
    O.Sales,
    O.ProductID,

    SUM(O.Sales) OVER() AS sales_of_all_orders,

    SUM(O.Sales)
    OVER(PARTITION BY O.ProductID)
        AS sales_of_each_product

FROM Sales.Orders AS O;


-- Percentage contribution of each product

SELECT 
    O.OrderDate,
    O.OrderID,
    O.Sales,
    O.ProductID,

    SUM(O.Sales) OVER() AS sales_of_all_orders,

    ROUND(
        (CAST(O.Sales AS FLOAT)
        / SUM(O.Sales) OVER()) * 100,
        2
    ) AS perc_contri

FROM Sales.Orders AS O;
