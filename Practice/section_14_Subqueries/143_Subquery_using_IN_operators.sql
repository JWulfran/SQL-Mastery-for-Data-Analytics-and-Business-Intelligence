-- Show the details of orders made by customers in Germany

SELECT 
    *
FROM Sales.Orders
WHERE CustomerID 
IN ( 
    SELECT CustomerID 
    FROM Sales.Customers 
    WHERE Country = 'Germany'
);

-- Show the details of orders made by customers not in Germany

SELECT 
    *
FROM Sales.Orders
WHERE CustomerID 
NOT IN ( 
    SELECT CustomerID 
    FROM Sales.Customers 
    -- WHERE County != 'Germany'
    WHERE Country = 'Germany'
);