/*
Problem:
Find number of days between each order and previous order.

Concepts used:
LAG, DATEDIFF

Approach:
Use LAG to access previous row and calculate difference.

Result:
Returns gap between orders.
*/

SELECT 
    OrderID,
    OrderDate AS current_order_date,
    LAG(OrderDate) OVER (ORDER BY OrderDate) AS previous_order_date,
    DATEDIFF(DAY,
        LAG(OrderDate) OVER (ORDER BY OrderDate),
        OrderDate) AS days_diff_orders
FROM Sales.Orders;
