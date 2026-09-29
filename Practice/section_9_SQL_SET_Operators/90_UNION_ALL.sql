    -- UNION ALL returns all rows from both query, including duplicates

-- Combine the data from employee and customers into one table, including duplicates

SELECT
    FirstName,
    LastName
FROM Sales.Employees

UNION ALL

SELECT
    FirstName,
    LastName
FROM Sales.Customers