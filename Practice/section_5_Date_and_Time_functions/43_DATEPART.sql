-- DATEPART() allow to extract the part of date

-- Extract the year, the month, the day, the hour, the quarter, the weekday and the week

SELECT OrderID, CreationTime,
    DATEPART(year, CreationTime) AS year_dp,
    DATEPART(month, CreationTime) AS month_dp,
    DATEPART(day, CreationTime) AS day_dp,
    DATEPART(hour, CreationTime) AS hour_dp,
    DATEPART(quarter, CreationTime) AS quarter_dp,
    DATEPART(weekday, CreationTime) AS weekday_dp,
    DATEPART(week, CreationTime) AS week_dp
FROM Sales.Orders; 

-- DATEPART allow to aggregate according of differents level

    -- Weekday level
SELECT 
    DATEPART(WEEKDAY, CreationTime),
    COUNT(*)
FROM Sales.Orders
GROUP BY DATEPART(WEEKDAY, CreationTime);