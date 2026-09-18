-- Retrieve a list of customers' first name after removing the first character

SELECT 
    first_name,
    SUBSTRING(TRIM(first_name), 2, LEN(first_name)) as sub_name
FROM customers;