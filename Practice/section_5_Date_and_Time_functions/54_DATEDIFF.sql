    -- DATEDIFF() finds the difference between two dates.

-- Calculate the age of employees

SELECT 
    EmployeeID,
    BirthDate,
    DATEDIFF(YEAR, BirthDate, GETDATE()) Age
FROM Sales.Employees