/*
Problem:
Analyze sales using multiple PARTITION BY combinations.

Concepts used:
PARTITION BY, WINDOW FUNCTION

Approach:
Calculate overall sales, product-wise sales,
and product + order status sales.

Result:
Returns detailed sales analysis.
*/

-- Total sales of all products

SELECT 
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    O.Sales,
    SUM(O.Sales) OVER() AS total_sales
FROM Sales.Orders AS O;


-- Total sales by product

SELECT 
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    O.Sales,
    SUM(O.Sales) OVER(PARTITION BY O.ProductID) AS total_sales_by_product
FROM Sales.Orders AS O;


-- Total sales overall and by product

SELECT 
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    O.Sales,
    SUM(O.Sales) OVER() AS total_sales,
    SUM(O.Sales) OVER(PARTITION BY O.ProductID) AS total_sales_by_product
FROM Sales.Orders AS O;


-- Total sales by product and order status

SELECT 
    O.OrderID,
    O.OrderDate,
    O.ProductID,
    O.Sales,
    O.OrderStatus,
    SUM(O.Sales) OVER() AS total_sales,
    SUM(O.Sales) OVER(PARTITION BY O.ProductID) AS total_sales_by_product,
    SUM(O.Sales) OVER(PARTITION BY O.ProductID, O.OrderStatus)
        AS total_sales_by_product_status
FROM Sales.Orders AS O;
