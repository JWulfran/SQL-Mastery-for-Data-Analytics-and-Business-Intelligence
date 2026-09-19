-- DATENAME() returns the name of a specific part of a date.

-- Find the name of the month, the weekday, the day of month and the year

SELECT CreationTime,
    DATENAME(month, CreationTime) AS month_dn,
    DATENAME(weekday, CreationTime) AS weekday_dn,

    DATENAME(day, CreationTime) AS day_dn,      -- {
                                                 -- }==> the value returns is store as a string
    DATENAME(year, CreationTime) AS year_dn     -- {
FROM Sales.Orders;