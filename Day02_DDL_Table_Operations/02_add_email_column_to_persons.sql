/*
Problem:
Add a new column called email to the persons table.

Concepts used:
ALTER TABLE, ADD COLUMN

Approach:
Alter the table to add a non-null email column.

Result:
The persons table now includes an email column.
*/

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

SELECT *
FROM persons;
