/*
Problem:
Find highest and lowest sales values.

Concepts used:
MIN, MAX, WINDOW FUNCTION

Approach:
Use MIN() and MAX() OVER()
for overall and grouped analysis.

Result:
Returns lowest/highest sales and deviations.
*/

-- Highest and lowest sales

SELECT 
    O.OrderID,
    O.OrderDate,
    O.Sales,
    O.ProductID,

    MIN(O.Sales) OVER() AS lowest_sales,
    MAX(O.Sales) OVER() AS highest_sales,

    MIN(O.Sales)
    OVER(PARTITION BY O.ProductID)
        AS lowest_sales_product_wise,

    MAX(O.Sales)
    OVER(PARTITION BY O.ProductID)
        AS highest_sales_product_wise

FROM Sales.Orders AS O;


-- Employees with highest salary

SELECT *
FROM
(
    SELECT 
        E.EmployeeID,
        E.FirstName,
        E.LastName,
        E.Salary,

        MAX(Salary) OVER() AS highest_salary

    FROM Sales.Employees AS E
) t
WHERE Salary = highest_salary;


-- Deviation from min and max sales

SELECT 
    O.OrderID,
    O.OrderDate,
    O.Sales,
    O.ProductID,
  
    MIN(O.Sales) OVER() AS lowest_sales,
    MAX(O.Sales) OVER() AS highest_sales,

    (Sales - MIN(O.Sales) OVER())
        AS min_deviation,

    (MAX(O.Sales) OVER() - Sales)
        AS max_deviation

FROM Sales.Orders AS O;
