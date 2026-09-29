    -- EXCEPT returns all distinct rows fro the first query that are not found in the second query
    -- It's the only one where the order of query affects the final result.

-- Find the employees who are not customers at the same time

SELECT
    FirstName,
    LastName
FROM Sales.Employees

EXCEPT

SELECT
    FirstName,
    LastName
FROM Sales.Customers;