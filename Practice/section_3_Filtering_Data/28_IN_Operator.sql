-- Check if a value exists in a list

-- Retrieve all customers from Germany or USA

SELECT * FROM customers
WHERE country = 'Germany' OR country = 'USA';

SELECT * FROM customers
WHERE country IN ('Germany', 'USA')