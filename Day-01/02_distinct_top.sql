/*
===========================================
Query 1: Get Unique Countries
===========================================

Problem Statement:
Retrieve a list of unique countries from the dataset.

Concept Used:
- DISTINCT

Approach:
Remove duplicate country values using DISTINCT.

Outcome:
Returns unique country names.
*/

SELECT DISTINCT country
FROM customers;


/*
===========================================
Query 2: Get Top 3 Customers
===========================================

Problem Statement:
Retrieve the top 3 customers from the dataset.

Concept Used:
- TOP

Approach:
Limit the result set to the first 3 rows.

Outcome:
Returns top 3 customer records.
*/

SELECT TOP 3 *
FROM customers;
