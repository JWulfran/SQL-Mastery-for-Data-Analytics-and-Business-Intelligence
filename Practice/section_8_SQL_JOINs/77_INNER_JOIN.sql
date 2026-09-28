    -- INNER JOIN returns the matching rows from both tables, only common data.
    -- With the INNER JOIN, the Order of tables doesn't matters.

-- Get all customers along with their orders, but only for customer who have an order

SELECT *
FROM customers              -- ===> LEFT TABLE
INNER JOIN orders           -- ===> RIGHT TABLE
ON id = customer_id;

    -- Select all columns needed

SELECT 
    id,
    first_name,
    order_id,
    sales
FROM customers
INNER JOIN orders
ON id = customer_id;

    -- Avoid columns ambiguity : add the table name before the column in joins 
    --                              to avoid confusion with same-named columns
    -- Also we can use alias for to name the columns.

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id
 