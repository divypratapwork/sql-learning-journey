/*
Problem:
Show customer name and country in one column.

Concepts used:
CONCAT

Approach:
Merge first_name and country.

Result:
Returns combined column.
*/

SELECT
    first_name,
    country,
    CONCAT(first_name,'_',country) AS name_country
FROM customers;
