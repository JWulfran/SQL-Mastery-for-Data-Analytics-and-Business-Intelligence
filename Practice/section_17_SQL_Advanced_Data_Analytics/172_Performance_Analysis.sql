-- Analyze the yearly performance of products by comparing each
-- product's sales to both its average sales performance and the previous year's sales

WITH yearly_products_sales AS (
        -- The yearly perfomance by products
    SELECT 
        YEAR(f.order_date) AS order_year,
        p.product_name,
        SUM(f.sales_amount) AS current_sales
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
    ON f.product_key = p.product_key
    WHERE order_date IS NOT NULL
    GROUP BY YEAR(f.order_date), p.product_name
)
SELECT 
    order_year,
    product_name,
    current_sales,

        -- Comparing with the average
    AVG(current_sales) OVER(PARTITION BY product_name) avg_sales,
    current_sales - AVG(current_sales) OVER(PARTITION BY product_name) AS diff_avg,
    CASE 
        WHEN current_sales - AVG(current_sales) OVER(PARTITION BY product_name) > 0  THEN 'Above Avg'
        WHEN current_sales - AVG(current_sales) OVER(PARTITION BY product_name) < 0  THEN 'Below Avg'
        ELSE 'Avg'
    END Avg_change,
        -- Comparing with the last value
    LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year) py_sales,
    current_sales - LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year),
    CASE 
        WHEN current_sales - LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year) > 0  THEN 'Increase'
        WHEN current_sales - LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year) < 0  THEN 'Decrease'
        ELSE 'No change'
    END Avg_change
FROM yearly_products_sales
ORDER BY product_name, order_year