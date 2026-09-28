    -- LEFT JOIN returns all rows from the left tables and only the macthing from the right table
    -- Here, the order is important, we have to start with the left table

-- Get all customer along with their orders, including those without orders

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c                 -- ===> LEFT TABLE
LEFT JOIN orders AS o              -- ===> RIGHT TABLE
ON c.id = o.customer_id
