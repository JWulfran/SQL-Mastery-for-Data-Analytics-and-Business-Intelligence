-- Find the total sales
SELECT SUM(sales_amount) AS Total_Sales FROM gold.fact_sales;

-- Find how many items are sold
SELECT SUM(quantity) AS Total_Qty FROM gold.fact_sales;

-- Find the average selling price
SELECT AVG(price) AS Avg_price FROM gold.fact_sales;

-- Find the total number of orders
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales;
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales;

-- Find the total number of products
SELECT COUNT(product_name) AS number_of_products FROM gold.dim_products;
SELECT COUNT(DISTINCT product_key) AS number_of_products FROM gold.dim_products;

-- Find the total number of customers
SELECT COUNT(customer_key) AS number_of_customer FROM gold.dim_customers;

-- Find the total number of customer that has placed an order
SELECT COUNT(DISTINCT customer_key) AS number_of_customer_order FROM gold.fact_sales;

-- Generate a report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name, SUM(sales_amount) as measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr of Order', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr of Products', COUNT(product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total Nr of Customer', COUNT(customer_key) FROM gold.dim_customers;