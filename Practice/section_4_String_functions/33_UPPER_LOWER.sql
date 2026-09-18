-- UPPER converts all charaters to uppercase
-- LOWER converts all charaters to lowercase 

-- Transform the customer's first name to lowercase

SELECT
    first_name, country,
    LOWER(first_name)
FROM customers;

-- Transform the customer's first name to uppercase

SELECT
    first_name, country,
    UPPER(first_name)
FROM customers;
