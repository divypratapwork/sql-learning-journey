/*
Problem:
Get customers who have placed orders
without using INNER JOIN.
*/

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;
