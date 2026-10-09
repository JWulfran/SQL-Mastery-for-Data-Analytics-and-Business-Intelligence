-- Time Series Analysis : Year over Year, Month over Month

-- Analyse the MoM performance by finding the percentage change in sales between the current and previous months

SELECT
    *,
    CurrentsMonthSales - PreviousMonthSales AS MoM_Change,
    ROUND(CAST((CurrentsMonthSales - PreviousMonthSales) AS float)/PreviousMonthSales, 1) AS MoM_Perc
FROM (
    -- Calculate the total sales by month
    SELECT
        MONTH(OrderDate) OrderMonth,
        SUM(Sales) CurrentsMonthSales,
        -- The Previous Month Sales
        LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) PreviousMonthSales
    FROM Sales.Orders
    GROUP BY MONTH(OrderDate)
)t