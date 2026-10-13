-- Show the details of orders made by customers in Germany

-- Main query
SELECT *
FROM Sales.Orders o
WHERE EXISTS (
    -- Subquery
    SELECT 1
    FROM Sales.Customers c
    WHERE Country = 'Germany'
    AND o.CustomerID = c.CustomerID
);

-- Show the details of orders made by customers not in Germany

-- Main query
SELECT *
FROM Sales.Orders o
WHERE NOT EXISTS (
    -- Subquery
    SELECT 1
    FROM Sales.Customers c
    WHERE Country = 'Germany'
    AND o.CustomerID = c.CustomerID
);