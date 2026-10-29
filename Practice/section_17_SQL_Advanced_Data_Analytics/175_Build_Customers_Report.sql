/*
==============================================================================================
Customer Report
==============================================================================================

Purpose:
- This report consolidates key customer metrics and behaviors

Highlights:
    1. Gathers essential fields such as names, ages, and transaction details.
    2. Aggregates customer-level metrics:
        - total orders
        - total sales
        - total quantity purchased
        - total products
        - lifespan (in months)
    3. Segments customers into categories (VIP, Regular, New) and age groups.
    4. Calculates valuable KPIs:
        - recency (months since last order)
        - average order value
        - average monthly spend
==============================================================================================
*/

-- Create a view
-- CREATE VIEW gold.report_customers AS

WITH base_query AS (
/*
1)  Base Query: Retrieves core columns from tables
*/
    SELECT
        f.order_number,
        f.product_key,
        f.order_date,
        f.sales_amount,
        f.quantity,
        c.customer_key,
        c.customer_number,
        CONCAT(c.first_name, c.last_name) AS customer_name,
        DATEDIFF(YEAR, c.birthdate, GETDATE()) AS age
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
    WHERE order_date IS NOT NULL
),

customer_aggregation AS (
/*
2) Customer Aggregations: Summarizes key metrics at the customer level
*/
    SELECT
        customer_key,
        customer_number,
        customer_name,
        age,
        COUNT(DISTINCT order_number) AS total_orders,
        SUM(sales_amount) AS total_sales,
        SUM(quantity) AS total_quantity,
        COUNT(DISTINCT product_key) total_products,
        MAX(order_date) last_order_date,
        DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) lifespan
    FROM base_query
    GROUP BY
    customer_key,
    customer_number,
    customer_name,
    age
) 
SELECT
    customer_key,
    customer_number,
    customer_name,
    age,
    total_orders,
    total_sales,
    total_quantity,
    total_products,
    last_order_date,
    lifespan,
    CASE
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50 and above'
    END AS age_group,
    CASE
        WHEN lifespan >= 12 AND total_sales > 5000 THEN 'VIP'
        WHEN lifespan >= 12 AND total_sales <= 5000 THEN 'Regular'
        ELSE 'New'
    END AS customer_segment,
    -- Recency
    DATEDIFF(MONTH, last_order_date, GETDATE()) AS recency,
    --  Average Order value
    CASE 
        WHEN total_orders > 0 THEN total_sales / total_orders
        ELSE 0
    END Avg_Order_value,
    -- Average Monthly Spend
    CASE 
        WHEN lifespan > 0 THEN total_sales / lifespan
        ELSE 0
    END Avg_Monthly_Spend

FROM customer_aggregation;

/*
SELECT *
FROM gold.report_customers;
*/