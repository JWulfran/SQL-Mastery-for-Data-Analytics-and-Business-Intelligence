-- Retrieve employee details with gender displayed as full text
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Gender,
    CASE 
        WHEN Gender = 'F' THEN 'Female'
        WHEN Gender = 'M' THEN 'Male'
        ELSE 'Not Available'
    END GenderFullText
FROM Sales.Employees

-- Retrieve customer details with abbreviated country code

SELECT
    CustomerID,
    FirstName,
    LastName,
    Country,
    CASE 
        WHEN Country = 'Germany' THEN 'DE'
        WHEN Country = 'USA' THEN 'US'
        ELSE 'N/A'
    END CountryAbbr
FROM Sales.Customers

    -- QUICK FORM

SELECT
    CustomerID,
    FirstName,
    LastName,
    Country,
    CASE Country
        WHEN 'Germany' THEN 'DE'
        WHEN 'USA' THEN 'US'
        ELSE 'N/A'
    END CountryAbbr
FROM Sales.Customers