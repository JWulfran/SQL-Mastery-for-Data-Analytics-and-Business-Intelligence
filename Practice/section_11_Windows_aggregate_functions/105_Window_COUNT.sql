    -- COUNT window function is used to count the number of rows in a specified window frame. 
    -- It can be applied to a specific column or to all rows in the window.
    -- The syntax for the COUNT window function is as follows:
    -- COUNT([ALL | DISTINCT] expression) OVER (PARTITION BY partition_expression ORDER BY order_expression ROWS BETWEEN frame_start AND frame_end)
    -- The COUNT function can be used with the ALL or DISTINCT keyword to count all rows or only distinct values, respectively.
    -- COUNT(*) or COUNT(1) counts all rows in the window frame, while COUNT(column_name) counts only non-null values in the specified column.

-- USE CASE #1 : Overall analysis, Quick summary or snapshot of the entire dataset.

-- Find the total number of Orders

SELECT
    COUNT(*) TotalOrders
FROM Sales.Orders;

-- Additionally provide details such OrderID, OrderDate

SELECT
    OrderID,
    OrderDate,
    COUNT(*) OVER () AS TotalOrders
FROM Sales.Orders;

-- USE CASE #2 : Total per group, group-wise analysis, to understand patterns within diffrent categories.

-- Find the total number of Orders for each Customer along with OrderID and OrderDate

SELECT
    CustomerID,
    OrderID,
    OrderDate,
    COUNT(*) OVER (PARTITION BY CustomerID) AS TotalOrdersPerCustomer
FROM Sales.Orders;

-- Find the total number of customers, additionally provide all customer details

SELECT
    *,
    COUNT(*) OVER () AS TotalCustomers
FROM Sales.Customers;

-- USE CASE #3 : Data quality check, Detecting numbers of NULLs by comparing to total number rows.

-- Find the total number of score for the customer

SELECT
    *,
    COUNT(Score) OVER () TotalScores
FROM Sales.Customers;

    -- Checking NULLs

SELECT
    *,
    COUNT(Score) OVER () TotalScores,
    COUNT(*) OVER () TotalCustomers,
    COUNT(*) OVER () - COUNT(Score) OVER () AS TotalNullScores,
    COUNT(Country) OVER () TotalCountries,
    COUNT(*) OVER () - COUNT(Country) OVER () AS TotalNullCountries
FROM Sales.Customers;

--      DATA QUALITY ISSUE : Duplicate leads to inaccuracies in analysis,
--                           COUNT window function can be used to identify duplicates

-- USE CASE #4 : Data quality check, Detecting duplicates by comparing to total number rows.

-- Check wheter the table 'Orders' contains any duplicate rows

SELECT
    OrderID,
    COUNT(*) OVER (PARTITION BY OrderID) AS DuplicateCount
FROM Sales.Orders;

    -- Check it with 'OrderArchive' table

SELECT
    OrderID,
    COUNT(*) OVER (PARTITION BY OrderID) AS DuplicateCount
FROM Sales.OrdersArchive;

    -- Filtering out the duplicates

SELECT * FROM (
    SELECT
        OrderID,
        COUNT(*) OVER (PARTITION BY OrderID) AS DuplicateCount
    FROM Sales.OrdersArchive
)t WHERE DuplicateCount > 1;




