    -- FULL JOIN returns all rows from both tables
    -- Here too, the order is not important

-- Get all customer and all order, even if there is no match

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id