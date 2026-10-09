-- Show all customer details and find the total orders of each customer

    -- Main query
SELECT
    c.*,
    o.TotalOrder
FROM Sales.Customers c
LEFT JOIN (
    SELECT 
        CustomerID,
        COUNT(*) TotalOrder
    FROM Sales.Orders
    GROUP BY CustomerID) o
ON c.CustomerID = o.CustomerID