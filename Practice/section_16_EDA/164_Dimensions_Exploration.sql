-- Explore all countries our customer come from
SELECT DISTINCT country FROM gold.dim_customers;

-- Explore all categories 'the major divisions'
SELECT DISTINCT category FROM gold.dim_products;

-- Explore all categories 'the major divisions' with their subcategory
SELECT DISTINCT category, subcategory FROM gold.dim_products;

-- Explore all categories 'the major divisions' with their subcategory and products
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products;

