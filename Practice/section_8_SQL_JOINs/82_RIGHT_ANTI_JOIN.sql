    -- RIGHT ANTI JOIN returns rows from the right table that has no match in the left table

-- Get all orders without matching customers

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL;

    -- Solve the task with a LEFT JOIN

SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL;