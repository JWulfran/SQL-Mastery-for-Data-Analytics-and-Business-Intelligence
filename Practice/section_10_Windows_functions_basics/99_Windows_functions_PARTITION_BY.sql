    -- PARTITION BY clause is used to divide the result set into partitions (Windows) 
    -- and perform calculations on each partition separately. 
    -- It is often used with window functions to provide aggregate values for each partition.

-- Find the total sales across all orders, additionally provide details such order ID, Order date
SELECT
    OrderID,
    OrderDate,
    SUM(Sales) OVER () AS TotalSales
FROM Sales.Orders;

-- Find the total sales for each product, additionally provide details such order ID, Order date

SELECT
    OrderID,
    OrderDate,
    ProductID,
    SUM(Sales) OVER (PARTITION BY ProductID) AS TotalSalesByProducts
FROM Sales.Orders;

-- Find the total sales across all orders and the total sales for each product, additionally provide details such order ID, Order date

SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    SUM(Sales) OVER () AS TotalSales,
    SUM(Sales) OVER (PARTITION BY ProductID) AS TotalSalesByProducts
FROM Sales.Orders;
    -- Flexility of windows functions allows us to calculate multiple aggregations in a single query without changing the granularity of the result set.

-- Find the total sales across all orders, the total sales for each product and the total sales for each combination
-- of product and Order Status , additionally provide details such order ID, Order date

SELECT
    OrderID,
    OrderDate,
    ProductID,
    OrderStatus,
    Sales,
    SUM(Sales) OVER () AS TotalSales,
    SUM(Sales) OVER (PARTITION BY ProductID) AS TotalSalesByProducts,
    SUM(Sales) OVER (PARTITION BY ProductID, OrderStatus) AS TotalSalesByProductAndStatus
FROM Sales.Orders;