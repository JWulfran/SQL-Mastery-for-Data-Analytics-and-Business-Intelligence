-- Change Over Years is a high-level overview insights that helps with strategic decision-making

SELECT 
    YEAR(order_date) order_year,
    SUM(sales_amount) total_sales
FROM gold.fact_sales 
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);


SELECT 
    YEAR(order_date) order_year,
    SUM(sales_amount) total_sales,
    COUNT(DISTINCT customer_key) total_customers,
    SUM(quantity) total_quantity
FROM gold.fact_sales 
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);

-- Changes Over Months details insights to discover seasonality in your data

SELECT 
    MONTH(order_date) order_month,
    SUM(sales_amount) total_sales,
    COUNT(DISTINCT customer_key) total_customers,
    SUM(quantity) total_quantity
FROM gold.fact_sales 
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date);

-- Aggregate with two dimensions

SELECT 
    YEAR(order_date) order_year,
    MONTH(order_date) order_month,
    SUM(sales_amount) total_sales,
    COUNT(DISTINCT customer_key) total_customers,
    SUM(quantity) total_quantity
FROM gold.fact_sales 
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

-- DATETRUNC rounds a date or timestamp to a specified date part

SELECT 
    DATETRUNC(MONTH, order_date) order_month,
    SUM(sales_amount) total_sales,
    COUNT(DISTINCT customer_key) total_customers,
    SUM(quantity) total_quantity
FROM gold.fact_sales 
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(MONTH, order_date)
ORDER BY DATETRUNC(MONTH, order_date);

-- Use a specific format : 
-- The function FORMAT() returns a string so the result is not well sorted

SELECT 
    FORMAT(order_date, 'yyyy-MMM') order_month,
    SUM(sales_amount) total_sales,
    COUNT(DISTINCT customer_key) total_customers,
    SUM(quantity) total_quantity
FROM gold.fact_sales 
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM');

-- How many customer were added each year

SELECT 
    DATETRUNC(YEAR, create_date) create_year,
    COUNT(customer_key) total_customer
FROM gold.dim_customers
GROUP BY DATETRUNC(YEAR, create_date)
ORDER BY  DATETRUNC(YEAR, create_date);