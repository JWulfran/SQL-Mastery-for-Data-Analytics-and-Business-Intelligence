    -- Non-CORRELATED SUBQUERY is subquery that can run independtly from the main query
    -- CORRELETED SUBQUERY is subquery taht relays on values from the main query

-- Find all customer details and find the total orders of each customer

    -- Total order
SELECT 
    *,
    (SELECT COUNT(*) FROM Sales.Orders) AS TotalOrders
FROM Sales.Customers;

    -- Total Order for each customer
SELECT 
    *,
    (SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID) AS TotalOrders
FROM Sales.Customers c;

