-- In order to analyze customer loyalty,
-- rank customers based on the average days between their orders

SELECT 
    CustomerID,
    AVG(DaysUntilNextOrder) AvgDaysBetweenOrder,
    RANK() OVER(ORDER BY COALESCE(AVG(DaysUntilNextOrder), 999)) Rank
FROM (
    SELECT
        OrderID,
        CustomerID,
        OrderDate CurrentOrder,
        LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) NextOrder,
        DATEDIFF(DAY, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) DaysUntilNextOrder
    FROM Sales.Orders
)t
GROUP BY CustomerID;