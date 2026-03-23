/*
==================================================
Query: Remove Phone Column
==================================================

Problem Statement:
Remove the 'phone' column from the persons table.

Concepts Used:
- ALTER TABLE
- DROP COLUMN

Approach:
Modify the table structure by removing an existing column.

Outcome:
The 'persons' table no longer contains the 'phone' column.
*/

ALTER TABLE persons
DROP COLUMN phone;

-- Verify updated table
SELECT *
FROM persons;
