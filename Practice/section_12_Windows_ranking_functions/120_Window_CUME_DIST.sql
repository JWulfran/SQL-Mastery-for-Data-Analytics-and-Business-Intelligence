    -- CUME_DIST() is the cummulative distribution, it calaculates the distribution of 
    -- of data points within a window

SELECT 
    Sales,
    CUME_DIST() OVER(ORDER BY Sales DESC) Dist
FROM Sales.Orders