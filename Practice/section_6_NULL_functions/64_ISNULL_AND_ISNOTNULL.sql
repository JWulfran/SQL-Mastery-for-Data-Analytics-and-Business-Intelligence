    -- IS NULL returns TRUE if the values is null
    -- IS NOT NULL returns TRUE if the value IS NOT NULL
    -- otherwise it returns FALSE.

    -- IS NULL | IS NOT NULL use for searching missing informations

-- Identify customers who have no scores

SELECT 
    *
FROM sales.Customers
WHERE Score IS NULL

-- Show the list of customer who have score

SELECT 
    *
FROM sales.Customers
WHERE Score IS NOT NULL

    -- LEFT ANTI JOIN | RIGHT ANTI JOIN is a technique for finding the 
    -- unmatched rows between two tables

-- Show the list of all details for customers who have not placed any orders

    -- The focus is point on the customer table so it's our left table

SELECT 
    c.*,
    o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL