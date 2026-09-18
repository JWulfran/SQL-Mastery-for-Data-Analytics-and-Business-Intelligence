-- Excludes matching values

-- Retrieve all customers with a score not less than 500

SELECT * from customers
WHERE NOT score < 500;

    -- Without the NOT operator
SELECT * FROM customers
WHERE score >= 500;