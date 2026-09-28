    -- FULL ANTI JOIN returns only the rows that don't match i either tables

-- Find customers without orders and orders without customers

SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL
OR o.customer_id IS NULL;

-- Get all customer along wit their orders, but only for customers who have placedan order
--                          (Without using INNER JOIN)

    -- With INNER JOIN

SELECT *
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;

    -- Without INNER JOIN

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL
AND o.customer_id IS NOT NULL;

    -- Resolution
    
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;