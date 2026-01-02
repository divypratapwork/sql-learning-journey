/*
Problem:
Remove the phone column from the persons table.

Concepts used:
ALTER TABLE, DROP COLUMN

Approach:
Modify the table structure by dropping the phone column.

Result:
The persons table no longer contains the phone column.
*/

ALTER TABLE persons
DROP COLUMN phone;

SELECT *
FROM persons;
