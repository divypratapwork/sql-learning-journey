/*
Problem:
Retrieve employee details with gender displayed as full text.

Concepts used:
CASE

Approach:
Convert gender codes into readable text.

Result:
Returns employee details with full gender names.
*/

SELECT 
    E.EmployeeID,
    E.FirstName,
    E.Gender,
    CASE 
        WHEN E.Gender = 'M' THEN 'Male'
        WHEN E.Gender = 'F' THEN 'Female'
        ELSE 'Not Available'
    END AS gender_full_text
FROM Sales.Employees AS E;
