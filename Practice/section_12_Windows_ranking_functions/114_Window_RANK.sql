    -- RANK function assign a rank to eah row, it handles ties.

-- Rank the orders based on their sales from highest to lowest

SELECT
    OrderID,
    ProductID,
    Sales,
    RANK() OVER(ORDER BY Sales DESC) SalesRank_Rank
FROM Sales.Orders
