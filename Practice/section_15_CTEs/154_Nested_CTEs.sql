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
-- Step 3 : Rank Customers based on total Sales per Customer
, CTE_Customer_RanK AS
(
    SELECT
        CustomerID,
        TotalSales,
        RANK() OVER(ORDER BY TotalSales DESC) AS CustomerRank
    FROM CTE_Total_Sales
)
/*
SELECT * FROM CTE_Customer_rank
*/
-- Step 4 : segment customer based on their total sales
, CTE_Customer_Segments AS
(
    SELECT
        CustomerID,
        TotalSales,
        CASE
            WHEN TotalSales > 100 THEN 'HIGH'
            WHEN TotalSales > 80 THEN 'MEDIUM'
            ELSE 'LOW'
        END CustomerSegments
    FROM CTE_Total_Sales
)
/*
    SELECT * FROM CTE_Customer_Segments
*/


-- Main Query
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.TotalSales,
    clo.LastOrder,
    ccr.CustomerRank,
    ccs.CustomerSegments
FROM Sales.Customers c
LEFT JOIN CTE_Total_Sales cts
ON c.CustomerID = cts.CustomerID
LEFT JOIN CTE_Last_Order clo
ON c.CustomerID = clo.CustomerID
LEFT JOIN CTE_Customer_RanK ccr
ON c.CustomerID = ccr.CustomerID
LEFT JOIN CTE_Customer_Segments ccs
ON c.CustomerID = ccs.CustomerID