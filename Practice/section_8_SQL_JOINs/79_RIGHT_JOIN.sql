    -- RIGHT JOIN returns all rows from the right table and only the the matching data with the left table

-- Get all customer along with their orders, including orders without matching customers

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;


    -- Solve the task with a LEFT JOIN

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id;
        -- It's better to use the LEFT JOIN.