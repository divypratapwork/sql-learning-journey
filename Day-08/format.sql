/*
Problem:
Display dates in different formats.

Concepts used:
FORMAT

Approach:
Use FORMAT function to extract and display parts of date.

Result:
Returns date in multiple readable formats.
*/

SELECT 
    OrderID,
    CreationTime,

    FORMAT(CreationTime,'dd') AS [DATE_1-31],
    FORMAT(CreationTime,'ddd') AS short_day_name,
    FORMAT(CreationTime,'dddd') AS full_day_name,

    FORMAT(CreationTime,'MM') AS [Month(1-12)],
    FORMAT(CreationTime,'MMM') AS short_month,
    FORMAT(CreationTime,'MMMM') AS month_name,

    FORMAT(CreationTime,'dd-MM-yyyy') AS ddmmyyyy_format,
    FORMAT(CreationTime,'dd-MMM-yy') AS ddmmmyy_format,
    FORMAT(CreationTime,'dddd-MMMM-yyyy') AS full_format

FROM Sales.Orders;
