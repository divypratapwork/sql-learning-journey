/*
Problem:
Get orders without matching customers (alternative method).

Concepts used:
LEFT ANTI JOIN

Approach:
Join from orders and filter missing customers.

Result:
Returns orders without customers.
*/

SELECT *
FROM orders
LEFT JOIN customers
ON customers.id = orders.customer_id
WHERE customers.id IS NULL;
