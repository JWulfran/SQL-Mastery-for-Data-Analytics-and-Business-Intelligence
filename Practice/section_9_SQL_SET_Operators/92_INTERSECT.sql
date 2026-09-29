    -- INTERSECT returns common rows between both tables

-- Find the employees, who are also customer

SELECT
    FirstName,
    LastName
FROM Sales.Customers

INTERSECT

SELECT
    FirstName,
    LastName
FROM Sales.Employees

-- Find the customers, who are also employees

SELECT
    FirstName,
    LastName
FROM Sales.Employees

INTERSECT

SELECT
    FirstName,
    LastName
FROM Sales.Customers;
