/*
==================================================
Query: Delete All Records from Table
==================================================

Problem Statement:
Remove all records from the person table.

Concepts Used:
- DELETE
- TRUNCATE (alternative)

Approach:
Use DELETE to remove all rows.
(TRUNCATE is faster but less flexible and cannot be rolled back in some systems)

Outcome:
The person table becomes empty.
*/

DELETE FROM person;

-- Alternative:
-- TRUNCATE TABLE person;

-- Verify deletion
SELECT *
FROM person;
