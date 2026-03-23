/*
==================================================
Query: Add Email Column
==================================================

Problem Statement:
Add a new column 'email' to the persons table.

Concepts Used:
- ALTER TABLE
- ADD COLUMN

Approach:
Modify the existing table structure by adding a new column.

Outcome:
The 'persons' table now includes an 'email' column.
*/

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

-- Verify updated table
SELECT *
FROM persons;
