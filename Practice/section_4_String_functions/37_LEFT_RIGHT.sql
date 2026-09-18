-- LEFT extracts specific number of characters from the start
-- RIGHT extracts specific number of characters from the end

-- Retrieve the two first characters of each first name 

SELECT 
    first_name,
    LEFT(TRIM(first_name),2) 
FROM customers;


-- Retrieve the two last characters of each name

SELECT
    first_name,
    RIGHT(TRIM(first_name), 2)
FROM customers;