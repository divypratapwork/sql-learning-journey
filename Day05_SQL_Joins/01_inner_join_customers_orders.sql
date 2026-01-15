/*
Problem:
Get all customers along with their orders,
but only for customers who have placed an order.

Concepts used:
INNER JOIN
*/

SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.order_date,
    o.sales
FROM customers c
INNER JOIN orders o
ON o.customer_id = c.id;
