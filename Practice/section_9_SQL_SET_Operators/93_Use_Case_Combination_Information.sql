    -- Combine similar information before analyzing the data

-- Orders are stored in seperate tables (Orders and OrdersArchive),
-- combine all order into on report without duplicates.

SELECT
    *
FROM Sales.Orders

UNION

SELECT
    *
FROM Sales.OrdersArchive;

    -- Don't use the asterix (*) to combine tables, list needed columns instead

SELECT
    'Orders' AS SourceTable
    ,[OrderID]
    ,[ProductID]
    ,[CustomerID]
    ,[SalesPersonID]
    ,[OrderDate]
    ,[ShipDate]
    ,[OrderStatus]
    ,[ShipAddress]
    ,[BillAddress]
    ,[Quantity]
    ,[Sales]
    ,[CreationTime]
FROM Sales.Orders

UNION

SELECT
    'OrdersArchive'
    ,[OrderID]
    ,[ProductID]
    ,[CustomerID]
    ,[SalesPersonID]
    ,[OrderDate]
    ,[ShipDate]
    ,[OrderStatus]
    ,[ShipAddress]
    ,[BillAddress]
    ,[Quantity]
    ,[Sales]
    ,[CreationTime]
FROM Sales.OrdersArchive;