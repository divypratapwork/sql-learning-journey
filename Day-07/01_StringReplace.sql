/*
Problem:
Clean and modify string values.

Concepts used:
REPLACE

Approach:
Remove unwanted characters and replace file extension.

Result:
Returns cleaned number and modified file name.
*/

SELECT
    '8290-88-36-79' AS number,
    'file.txt' AS txt_name,
    REPLACE('8290-88-36-79','-','') AS clean_no,
    REPLACE('file.txt','.txt','.CSV') AS csv_file;
