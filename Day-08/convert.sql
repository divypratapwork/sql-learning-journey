/*
Problem:
Convert data types using CONVERT.

Concepts used:
CONVERT

Approach:
Convert string to int, string to date, and datetime to other formats.

Result:
Returns converted values.
*/

SELECT 
    CONVERT(int,'123') AS string_to_int,
    CONVERT(date,'2025-08-20') AS string_to_date,
    CreationTime,
    CONVERT(date, CreationTime) AS datetime_to_date,
    CONVERT(varchar, CreationTime, 32) AS usa_format,
    CONVERT(varchar, CreationTime, 34) AS europe_format
FROM Sales.Orders;
