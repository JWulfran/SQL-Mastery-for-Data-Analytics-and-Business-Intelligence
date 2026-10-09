-- Find the lowest and the highest sales for each product

SELECT
    OrderID,
    ProductID,
    Sales,
    FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) LowestSales,
    LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales
    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) HighestSales,
    FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales DESC) HighestSale2,
    MIN(Sales) OVER(PARTITION BY ProductID) LowestSale2,
    MAX(Sales) OVER(PARTITION BY ProductID) HighestSale3
FROM Sales.Orders;

-- Find the difference in sales between hthe current and the lowest sales

SELECT
    OrderID,
    ProductID,
    Sales,
    FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) LowestSales,
    LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales
    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) HighestSales,
    Sales - FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) AS SalesDifference
FROM Sales.Orders;