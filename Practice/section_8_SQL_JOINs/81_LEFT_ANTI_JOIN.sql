    -- LEFT ANTI JOIN returns row from the left table that has no match in the right table

-- Get all customers who haven't placed any order

SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL