-- DAY() returns the day from the date
-- MONTH() returns the month of the date
-- YEAR() returns the year of the date

-- Retrieve the year, the month and the day from the creation time

SELECT OrderID, CreationTime,
    YEAR(CreationTime) AS Year,
    MONTH(CreationTime) AS Month,
    DAY(CreationTime) AS Day
FROM Sales.Orders;