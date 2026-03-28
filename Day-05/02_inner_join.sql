/*
Problem:
Retrieve customers along with their orders,
only for those who have placed orders.

Concepts used:
INNER JOIN

Approach:
Join customers and orders where IDs match.

Result:
Returns only matching records.
*/

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.order_date,
    o.sales
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id;
