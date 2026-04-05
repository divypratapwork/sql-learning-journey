/*
Problem:
Find customers with leading or trailing spaces in names.

Concepts used:
TRIM, LEN

Approach:
Compare length before and after trimming.

Result:
Identifies names with extra spaces.
*/

SELECT
    first_name,
    LEN(first_name) AS len_name,
    LEN(TRIM(first_name)) AS len_trim_name,
    LEN(first_name) - LEN(TRIM(first_name)) AS flag
FROM customers;
