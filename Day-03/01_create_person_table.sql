/*
==================================================
Query: Create 'person' Table
==================================================

Problem Statement:
Create a table named 'person' with a primary key.

Concepts Used:
- CREATE TABLE
- PRIMARY KEY
- Data Types

Approach:
Define table structure and assign 'id' as the primary key
to uniquely identify each record.

Outcome:
The 'person' table is successfully created.
*/

CREATE TABLE person (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15),
    CONSTRAINT primary_key_person PRIMARY KEY (id)
);
