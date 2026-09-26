-- Find the average scores of customers and treat Nulls as 0
-- additionally provide details such CustomerID and LastName

SELECT
    CustomerID,
    LastName,
    Score,
    CASE 
        WHEN Score IS NULL THEN 0
        ELSE Score
    END CleanScore,

    AVG(CASE 
            WHEN Score IS NULL THEN 0
            ELSE Score
        END
        ) OVER() AvgScoreCustomerClean,
    
    AVG(Score) OVER() AvgScoreCustomer

FROM Sales.Customers

-- Count how many times each customer has made an order with sales greater than 30

    --  Create a flag
SELECT 
    OrderID,
    CustomerID,
    Sales,
    CASE
        WHEN Sales > 30 THEN 1
        ELSE 0
    END SalesFlag
FROM Sales.Orders
ORDER BY CustomerID

    -- Aggregate

SELECT
    CustomerID,
    SUM(CASE 
            WHEN Sales > 30 THEN 1
            ELSE 0
        END) TotalHighSales,
        COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID
