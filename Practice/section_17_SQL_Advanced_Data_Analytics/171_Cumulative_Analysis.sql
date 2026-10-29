-- Calculate the total sales per month and the running total of sales over time

SELECT 
    order_date,
    total_sales,
    SUM(total_sales) OVER(ORDER BY order_date) AS running_total_sales
FROM (
    SELECT 
        DATETRUNC(MONTH, order_date) order_date,
        SUM(sales_amount) total_sales
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(MONTH, order_date)
)t;

    -- This code adds each row's value to the sum of all the previous row's values.
    -- It's use a default windows frame : BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

-- We can use PARTITION BY to reset the sum at the ends of each year

SELECT 
    order_date,
    total_sales,
    SUM(total_sales) OVER(PARTITION BY YEAR(order_date) ORDER BY order_date) AS running_total_sales
FROM (
    SELECT 
        DATETRUNC(MONTH, order_date) order_date,
        SUM(sales_amount) total_sales
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(MONTH, order_date)
)t;

    -- Change the granularity of data

SELECT 
    order_date,
    total_sales,
    SUM(total_sales) OVER(ORDER BY order_date) AS running_total_sales
FROM (
    SELECT 
        DATETRUNC(YEAR, order_date) order_date,
        SUM(sales_amount) total_sales
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(YEAR, order_date)
)t;

-- Adds another measure


SELECT 
    order_date,
    total_sales,
    SUM(total_sales) OVER(ORDER BY order_date) AS running_total_sales,
    AVG(Avg_price) OVER(ORDER BY order_date) AS moving_average_price
FROM (
    SELECT 
        DATETRUNC(MONTH, order_date) order_date,
        SUM(sales_amount) total_sales,
        AVG(price) as Avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(MONTH, order_date)
)t;