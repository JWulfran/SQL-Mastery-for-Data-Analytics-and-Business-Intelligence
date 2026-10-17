-- Step 1 : Find the total sales Per Customer

WITH CTE_Total_Sales AS
(
    SELECT
        CustomerID,
        SUM(Sales) AS TotalSales
    FROM Sales.Orders
    GROUP BY CustomerID
)
-- Step 2 : Find the last order for each customer
, CTE_Last_Order AS 
(
    SELECT 
        CustomerID,
        MAX(OrderDate) AS LastOrder
    FROM Sales.Orders
    GROUP BY CustomerID
)
-- Main Query
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.TotalSales,
    clo.LastOrder
FROM Sales.Customers c
LEFT JOIN CTE_Total_Sales cts
ON c.CustomerID = cts.CustomerID
LEFT JOIN CTE_Last_Order clo
ON c.CustomerID = clo.CustomerID