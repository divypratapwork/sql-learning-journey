/*
Problem:
Retrieve all customers and all orders,
even if there is no match.

Concepts used:
FULL JOIN

Approach:
Combine both tables including unmatched records.

Result:
Returns all data from both tables.
*/

SELECT *
FROM customers c
FULL JOIN orders o
ON c.id = o.customer_id;
