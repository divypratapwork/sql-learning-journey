/*
Problem:
Combine orders and archived orders into one report without duplicates.

Concepts used:
UNION

Approach:
Select same columns from both tables and combine them.

Result:
Returns a unified dataset of all orders.
*/

SELECT 
    'ORDERS' AS source_table,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.Orders

UNION

SELECT 
    'ORDERS_ARCHIVE' AS source_table,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.OrdersArchive;
