-- TRIM removes leading and trailing spaces

-- Find customers whose first name contains leading or trailing spaces

SELECT first_name FROM customers
WHERE first_name != TRIM(first_name);

    -- Using the LEN() function
SELECT first_name,
    LEN(first_name) AS len_name,
    LEN(TRIM(first_name)) AS len_trim_name,
    LEN(first_name) - LEN(TRIM(first_name)) AS flag
FROM customers;

    -- Or
SELECT first_name FROM customers
WHERE LEN(first_name) != len(TRIM(first_name));