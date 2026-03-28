/*
Problem:
Get customers who have not placed any orders.

Concepts used:
LEFT ANTI JOIN (LEFT JOIN + NULL filter)

Approach:
Filter customers where no matching order exists.

Result:
Returns customers without orders.
*/

SELECT *
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL;
