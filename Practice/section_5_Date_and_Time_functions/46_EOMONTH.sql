-- EOMONTH() returns the last day of the month 

-- Find the last day and the first day of the month
SELECT OrderID, CreationTime,
    EOMONTH(CreationTime) AS endOfMonth,
    CAST(DATETRUNC(MONTH,CreationTime) AS DATE) startOfMonth
FROM Sales.Orders;