    -- DENSE rank function assign a rank to each row, handles ties and doesn't leaves gaps in ranking.

-- Rank the orders based on their sales from highest to lowest

SELECT
    OrderID,
    ProductID,
    Sales,
    DENSE_RANK() OVER(ORDER BY Sales DESC) SalesRank_Row
FROM Sales.Orders
