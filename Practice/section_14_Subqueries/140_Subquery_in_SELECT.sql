-- Show the product IDs, product names, prices and the total number of orders

    -- Main Query
SELECT
    ProductID,
    Product,
    Price,
    -- Subquery
    (SELECT COUNT(*) FROM Sales.Orders) AS TotalOrders
FROM Sales.Products