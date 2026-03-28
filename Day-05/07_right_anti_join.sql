/*
Problem:
Get orders without matching customers.

Concepts used:
RIGHT ANTI JOIN

Approach:
Filter records where customer is missing.

Result:
Returns orders without customers.
*/

SELECT *
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
WHERE customers.id IS NULL;
