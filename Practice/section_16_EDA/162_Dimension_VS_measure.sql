-- Data types = Numeric 
--          then Does it makes sense to aggregate ?
--              then ==> measure
--              else ==> dimension
--          else ==> dimension


SELECT DISTINCT category
FROM gold.dim_products;

-- category isn't numeric so it's a dimension

SELECT DISTINCT sales_amount
FROM gold.fact_sales;

-- sales_amount is numeric and it's make sense to aggregate so it's a measure

SELECT DISTINCT product_name
FROM gold.dim_products;

-- product_name isn't numeric so it's a dimension

SELECT DISTINCT quantity
FROM gold.fact_sales;

-- quantity is numeric and it's make sense to aggregate so it's a measure

SELECT DISTINCT birthdate
FROM gold.dim_customers;

-- birthdate isn't numeric so it's a dimension 
-- but if we calculate the age, the age become a measure


SELECT DISTINCT DATEDIFF(YEAR, birthdate, GETDATE()) AS age
FROM gold.dim_customers

-- age is numeric and it's make sense to aggregate so it's a measure

SELECT DISTINCT customer_id
FROM gold.dim_customers;

-- customer_id is numeric and it doesn't make sense to aggregate so it's a dimension