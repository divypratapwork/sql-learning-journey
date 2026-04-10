/*
Problem:
Add and subtract time from order dates.

Concepts used:
DATEADD

Approach:
Add months, years, and subtract days from OrderDate.

Result:
Returns modified dates.
*/

SELECT
    OrderID,
    OrderDate,
    DATEADD(MONTH, 3, OrderDate) AS three_months_later,
    DATEADD(YEAR, 3, OrderDate) AS three_years_later,
    DATEADD(DAY, -3, OrderDate) AS three_days_before
FROM Sales.Orders;
