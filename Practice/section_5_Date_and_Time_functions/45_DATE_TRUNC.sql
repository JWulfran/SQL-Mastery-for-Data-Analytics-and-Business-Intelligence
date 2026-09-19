-- DATETRUNC() truncates (resets) the date to the specific part

-- Reset the creation time at a year, a day and a minute level

SELECT CreationTime,
    DATETRUNC(year, CreationTime) year_dt,
    DATETRUNC(day, CreationTime) day_dt,
    DATETRUNC(minute, CreationTime) minute_dt
FROM Sales.Orders;

-- DATETRUNC allow to aggregate according of differents level

    -- Month level
SELECT 
    DATETRUNC(MONTH, CreationTime),
    COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(MONTH, CreationTime);

