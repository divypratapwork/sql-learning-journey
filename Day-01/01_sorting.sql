/*
===========================================
Query: Sort Customers by Score (Descending)
===========================================

Problem Statement:
Retrieve all customers and display them sorted by highest score first.

Concepts Used:
- ORDER BY
- DESC (Descending Order)

Approach:
Sort the 'score' column in descending order to show top performers first.

Outcome:
Customers are displayed from highest to lowest score.
*/

SELECT *
FROM customers
ORDER BY score DESC;
