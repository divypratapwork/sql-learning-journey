/*
Problem:
Handle invalid date values.

Concepts used:
ISDATE, CASE, CAST

Approach:
Check if value is valid date, otherwise assign default value.

Result:
Returns cleaned date column.
*/

SELECT
    OrderDate,
    ISDATE(OrderDate) AS is_valid_date,
    CASE 
        WHEN ISDATE(OrderDate) = 1 
            THEN CAST(OrderDate AS DATE)
        ELSE '9999-01-01'
    END AS cleaned_date
FROM
(
    SELECT '2025-08-20' AS OrderDate UNION
    SELECT '2025-08-21' UNION
    SELECT '2024-09-2' UNION
    SELECT '2015-12-1' UNION
    SELECT '2019-1-1' UNION
    SELECT '2015-02'  -- invalid format
) AS t;
