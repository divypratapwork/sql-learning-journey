/*
Problem:
Find customers based on name patterns.

Concepts used:
LIKE, wildcards

Approach:
Use LIKE with wildcards to filter names containing specific characters
or having characters at specific positions.

Result:
Returns customers matching the defined name patterns.
*/

-- Customers whose name contains the letter 'i'
SELECT *
FROM customers
WHERE first_name LIKE '%i%';

-- Customers whose name has 'r' at the third position
SELECT *
FROM customers
WHERE first_name LIKE '__r%';
