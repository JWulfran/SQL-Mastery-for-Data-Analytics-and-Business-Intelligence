    -- ROW NUMBER function assign a unique number to each row, it doesn't handle ties.

-- Rank the orders based on their sales from highest to lowest

SELECT
    OrderID,
    ProductID,
    Sales,
    ROW_NUMBER() OVER(ORDER BY Sales DESC) SalesRank_Row
FROM Sales.Orders
