    -- ORDER BY clause in window functions is used to define the order of rows within each partition.
    -- It is often used with window functions to provide a ranking or cumulative values based on the specified order.
    
-- Rank each order based on their sales from the highest to the lowest,
-- additionally provide details such order ID, Order date

SELECT
    OrderID,
    OrderDate,
    Sales,
    RANK() OVER (ORDER BY Sales DESC) AS SalesRank
FROM Sales.Orders;


-- Rank each order based on their sales from the lowest to the highest,
-- additionally provide details such order ID, Order date

SELECT
    OrderID,
    OrderDate,
    Sales,
    RANK() OVER (ORDER BY Sales ASC) AS SalesRank       -- ==­­­> Here we can skip ASC because it is the default order, it' optional.
FROM Sales.Orders;