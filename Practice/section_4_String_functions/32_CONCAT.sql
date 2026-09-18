-- CONCAT combines multiple strings into one

-- Concatenate first name and country into one columns

SELECT 
    first_name, country,
    CONCAT(first_name, ' ', country) AS name_country
FROM customers;