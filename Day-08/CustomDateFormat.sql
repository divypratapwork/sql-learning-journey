/*
Problem:
Display CreationTime in a custom readable format.

Concepts used:
FORMAT, DATENAME, CONCAT

Approach:
Combine multiple date functions to create a formatted string.

Result:
Returns formatted date like:
Day Wed Jan Q1 2025 12:34:56 PM
*/

SELECT
    OrderID,
    CreationTime,
    'Day ' + FORMAT(CreationTime,'ddd MMM') + 
    ' Q' + DATENAME(quarter, CreationTime) + ' ' +
    FORMAT(CreationTime,'yyyy hh:mm:ss tt') AS formatted_date
FROM Sales.Orders;
