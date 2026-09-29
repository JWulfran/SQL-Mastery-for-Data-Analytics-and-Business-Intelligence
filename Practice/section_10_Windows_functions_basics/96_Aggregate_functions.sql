
SELECT
    customer_id,
-- Find the total number of customer
    COUNT(*) AS total_nr_orders,
-- Find the total sales of all orders
    SUM(sales) AS total_sales,
-- Find the average sales of all orders
    AVG(sales) AS avg_sales,
-- Find the highest sales of all orders
    MAX(sales) AS highest_sales,
-- Find the lowest sales of all orders
    MIN(sales) AS lowest_sales
FROM orders
-- Using the GROUP BY to aggregate
GROUP BY customer_id