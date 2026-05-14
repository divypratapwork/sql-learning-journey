/*
Problem:
Find total sales across all orders and for each product.

Concepts used:
SUM, GROUP BY, WINDOW FUNCTION, PARTITION BY

Approach:
Calculate total sales using aggregation and window functions.

Result:
Returns total sales and product-wise sales.
*/

-- Total sales across all orders

SELECT
    SUM(O.Sales) AS total_sales
FROM Sales.Orders AS O;


-- Total sales for each product

SELECT
    O.ProductID,
    SUM(O.Sales) AS total_sales
FROM Sales.Orders AS O
GROUP BY O.ProductID;


-- Total sales for each product with order details

SELECT
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    SUM(O.Sales) OVER(PARTITION BY O.ProductID) AS total_sales_by_product
FROM Sales.Orders AS O;
