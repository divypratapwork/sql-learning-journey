/*
Problem:
Check whether given values are valid dates.

Concepts used:
ISDATE

Approach:
Use ISDATE to validate different date formats.

Result:
Returns 1 for valid date and 0 for invalid date.
*/

SELECT
    ISDATE('123') AS DateCheck1,
    ISDATE('2025-08-20') AS DateCheck2,
    ISDATE('20-08-2025') AS DateCheck3, -- invalid format
    ISDATE('2025') AS DateCheck4,
    ISDATE('08') AS DateCheck5;
