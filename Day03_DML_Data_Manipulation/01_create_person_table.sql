/*
Problem:
Create a table named person with a primary key.

Concepts used:
CREATE TABLE, PRIMARY KEY, data types

Approach:
Define table structure and apply a primary key constraint on id.

Result:
The person table is created in the database.
*/

CREATE TABLE person (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15),
    CONSTRAINT primary_key_person PRIMARY KEY (id)
);
