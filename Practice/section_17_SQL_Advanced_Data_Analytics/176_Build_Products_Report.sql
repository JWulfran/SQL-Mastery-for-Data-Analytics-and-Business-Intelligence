/*
==================================================================================================================
Product Report
==================================================================================================================

Purpose:
    - This report consolidates key product metrics and behaviors.

Highlights:
    1. Gathers essential fields such as product name, category, subcategory, and cost.
    2. Aggregates product-level metrics:
        - total orders
        - total sales
        - total quantity sold
        - total customers (unique)
        - lifespan (in months)
    3. Segments products by revenue to identify High-Performers, Mid-Range, or Low-Performers.

    4. Calculates valuable KPIs:
        - recency (months since last sale)
        - average order revenue (AOR)
        - average monthly revenue
*/

-- CREATE VIEW gold.Products_report AS
WITH base_query AS (
/*
1)  Base Query: Retrieves core columns from tables
*/
    SELECT
        f.customer_key,
        f.order_number,
        f.product_key,
        f.order_date,
        f.sales_amount,
        f.quantity,
        p.product_name,
        p.product_number,
        p.category,
        p.subcategory,
        p.cost
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
    ON f.product_key = p.product_key
    WHERE order_date IS NOT NULL
),

product_aggregation AS (
/*
2) Customer Aggregations: Summarizes key metrics at the customer level
*/
    SELECT
        product_key,
        product_name,
        category,
        subcategory,
        cost,
        COUNT(DISTINCT order_number) total_orders,
        SUM(sales_amount) total_sales,
        SUM(quantity) total_quantity,
        COUNT(DISTINCT customer_key) total_customers,
        MAX(order_date) last_sale_date,
        DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) lifespan,
        ROUND(AVG(CAST(sales_amount AS FLOAT) / NULLIF(quantity, 0)), 1 ) Avg_selling_price
    FROM base_query
    GROUP BY 
        product_key,
        product_name,
        category,
        subcategory,
        cost
)

SELECT
    product_key,
    product_name,
    category,
    subcategory,
    cost,
    last_sale_date,
    total_orders,
    total_sales,
    total_quantity,
    total_customers,
    lifespan,
    CASE
        WHEN total_sales > 50000 THEN 'High_Performer'
        WHEN total_sales >= 10000 THEN 'Mid-Performer'
        ELSE 'Low-Performer'
    END AS product_segment,
    -- Average Order Revenue (AOR)
    CASE
        WHEN total_orders > 0 THEN total_sales / total_orders
        ELSE 0
    END AS Avg_order_revenue,
    -- Average Monthly Income
    CASE
        WHEN lifespan > 0 THEN total_sales / lifespan
        ELSE 0
    END AS Avg_Monthly_revenue

FROM product_aggregation;

/* SELECT * FROM gold.Products_report */;