/*
Problem:
Find average shipping duration in days for each month.

Concepts used:
DATEDIFF, AVG, GROUP BY

Approach:
Calculate difference between OrderDate and ShipDate and average it.

Result:
Returns average shipping time per month.
*/

SELECT 
    MONTH(OrderDate) AS month_of_orders,
    AVG(DATEDIFF(DAY, OrderDate, ShipDate)) AS avg_shipping_duration
FROM Sales.Orders
GROUP BY MONTH(OrderDate);
