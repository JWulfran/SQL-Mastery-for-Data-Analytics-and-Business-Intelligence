-- Step 1 : Find the total sales Per Customer

WITH CTE_Total_Sales AS
(
    SELECT
        CustomerID,
        SUM(Sales) AS TotalSales
    FROM Sales.Orders
    GROUP BY CustomerID
)
-- Main Query
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.TotalSales
FROM Sales.Customers c
LEFT JOIN CTE_Total_Sales cts
ON c.CustomerID = cts.CustomerID