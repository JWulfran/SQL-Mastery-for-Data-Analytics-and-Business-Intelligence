    -- WINDOWS FUNCTIONS or ANALYTICAL FUNCTIONS
    -- Windows functions are used to perform calculations across 
    -- a set of table rows that are somehow related to the current row.
    -- They are similar to aggregate functions, but unlike regular aggregate functions,
    -- they do not cause rows to become grouped into a single output row.

    -- GROUP BY returns a single row for each group (Changes the granularity)
    --          Simple Aggregations
    --          Simple Data Analysis
    -- Windows functions return a single row for each row in the original table (the granularity stays the same)
    --          Aggregations + Keep details
    --          Advanced Data Analysis

-- Find the total sales across all orders

SELECT
    ProductID,
    SUM(Sales) AS TotalSales
FROM Sales.Orders
    -- The number of rows in the output is defined by the dimension
GROUP BY ProductID;


-- Find the total sales for each product,
-- additionally provide details such order ID, Order date

SELECT
    OrderID,
    OrderDate,
    ProductID,
    SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY OrderID, OrderDate, ProductID;
-- GROUP BY can't do aggegations and provide details at the same time

-- Let's do it with Windows functions

SELECT
    OrderID,
    OrderDate,
    ProductID,
    -- windows functions returns a result for each row
    SUM(Sales) OVER (PARTITION BY ProductID) AS TotalSalesByProducts
FROM Sales.Orders;
-- The windows function provides the total sales for each product while keeping the individual order details


SELECT * FROM Sales.Orders;



