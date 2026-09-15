-- Retrieve customers with a score not equal to 0

    -- Selecting all customers
SELECT * FROM customers;

    -- Select customer with a score not equal to zero
SELECT * FROM customers 
WHERE score != 0;


-- Retrieve customers from germany

SELECT * FROM customers
WHERE country = 'Germany';

    -- Selecting the rows and columns
SELECT first_name, country FROM customers
WHERE country = 'Germany';