/*
Query: Pattern Matching on Customer Names

Problem Statement:
Find customers based on name patterns.

Concepts Used:
- LIKE
- Wildcards (% and _)

Approach:
Use % for multiple characters and _ for single character matching.

Outcome:
Returns customers matching specific name patterns.
*/

-- Names containing the letter 'i'
SELECT *
FROM customers
WHERE first_name LIKE '%i%';

-- Names with 'r' at the third position
SELECT *
FROM customers
WHERE first_name LIKE '__r%';
