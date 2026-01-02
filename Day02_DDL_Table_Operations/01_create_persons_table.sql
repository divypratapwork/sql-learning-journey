/*
Problem:
Create a new table called persons with columns:
id, person_name, birth_date, and phone.

Concepts used:
CREATE TABLE, PRIMARY KEY, constraints, data types

Approach:
Define table structure with appropriate data types
and apply a primary key constraint on id.

Result:
A new persons table is created in the database.
*/

CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT primary_key_persons PRIMARY KEY (id)
);

SELECT *
FROM persons;
