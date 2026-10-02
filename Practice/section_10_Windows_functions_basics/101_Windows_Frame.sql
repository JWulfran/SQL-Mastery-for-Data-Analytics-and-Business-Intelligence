    -- Windows frame functions are used to perform calculations across a set of table rows that are somehow related to the current row.
    -- They are similar to aggregate functions, but unlike regular aggregate functions,
    -- they do not cause rows to become grouped into a single output row.
    -- Windows frame functions are used to define a subset of rows (frame) within a partition for the current row.

SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) AS TotalSales
FROM Sales.Orders;

-- For only PRECEDING, we can use the following syntax:
-- ROWS BETWEEN 2 PRECEDING AND CURRENT ROW or ROWS 2 PRECEDING 

-- There are 4 types of windows frame functions:
    -- 1. ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    -- 2. ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
    -- 3. ROWS BETWEEN N PRECEDING AND CURRENT ROW
    -- 4. ROWS BETWEEN CURRENT ROW AND N FOLLOWING

-- ORDER BY clause in windows frame functions always uses a default frame
-- The default frame is defined as:
    -- ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    