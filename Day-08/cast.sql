/*
Problem:
Convert data types using CAST.

Concepts used:
CAST

Approach:
Convert values between different data types.

Result:
Returns converted data types.
*/

SELECT
    CAST('123' AS int) AS string_to_int,
    CAST(123 AS varchar) AS int_to_string,
    CAST('2025-08-20' AS date) AS string_to_date,
    CAST('2025-08-20' AS datetime2) AS string_to_datetime,
    CreationTime,
    CAST(CreationTime AS date) AS datetime_to_date
FROM Sales.Orders;
