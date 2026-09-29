    -- UNION returns all distinct rows from both tables

-- Combine the data from employees and customers into one table

SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION
SELECT
    FirstName,
    LastName
FROM Sales.Employees;