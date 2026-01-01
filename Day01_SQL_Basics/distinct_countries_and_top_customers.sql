/*
Problem Statement:
1. Retrieve a unique list of all countries.
2. Retrieve the top 3 customers from the dataset.

Concepts Used:
- DISTINCT
- TOP

Approach:
- Use DISTINCT to remove duplicate country values.
- Use TOP to limit the number of returned rows.

Outcome:
Provides unique country list and sample top customer records.
*/

-- Retrieve unique list of countries
SELECT DISTINCT country
FROM customers;

-- Retrieve top 3 customer records
SELECT TOP 3 *
FROM customers;
