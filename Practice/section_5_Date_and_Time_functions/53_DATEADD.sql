    -- DATEADD() allows us to adds or subtracts a specific time interval to/from a date.
SELECT
    OrderID,
    OrderDate,
    DATEADD(YEAR, 2, OrderDate) AS TwoYearsLater,
    DATEADD(MONTH, 3, OrderDate) AS ThreeMonthsLater,
    DATEADD(DAY, -10, OrderDate) AS TenDaysBefore
FROM Sales.Orders