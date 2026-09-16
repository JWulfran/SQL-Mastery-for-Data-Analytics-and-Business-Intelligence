-- Retrieve only 3 customers

    -- Selecting all customers
SELECT * FROM customers;

    -- Selecting the 3 first rows
SELECT TOP 3 * FROM customers;

-- Retrieve the top 3 customers with the highest scores

SELECT TOP 3 * FROM customers
ORDER BY score DESC; 

-- Retrieve the lowest 2 customers based on the score

SELECT TOP 3 * FROM customers
ORDER BY score ASC;

-- Get the two most recent orders

    -- Selecting all the orders and order it in DESC mode
SELECT * FROM orders
ORDER BY order_date DESC;

    -- Getting the two most recent orders
SELECT TOP 2 * FROM orders
ORDER BY order_date DESC;