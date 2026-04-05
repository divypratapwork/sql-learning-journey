/*
Problem:
Transform customer names into different formats.

Concepts used:
CONCAT, LOWER, UPPER

Approach:
Combine name with country and change case.

Result:
Returns formatted name variations.
*/

SELECT
    first_name,
    country,
    CONCAT(first_name,'_',country) AS name_country,
    LOWER(first_name) AS chote_name,
    UPPER(first_name) AS bade_name
FROM customers;
