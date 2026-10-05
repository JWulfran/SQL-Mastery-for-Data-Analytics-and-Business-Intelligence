-- Find the highest and the lowest sales of all orders,
-- And find the highest and the lowest for each product
-- additionally provide details such OrderID, OrderDate

SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    MAX(Sales) OVER() HighestSales,
    MIN(Sales) OVER() LowestSales,
    MAX(Sales) OVER(PARTITION BY ProductID) HighestSalesByProduct,
    MIN(Sales) OVER(PARTITION BY ProductID) LowestSalesByProduct
FROM Sales.Orders;

-- Show the employee who have the highest salaries

SELECT
    *
FROM (
    SELECT
        *,
        MAX(Salary) OVER() HighestSalary
    FROM Sales.Employees
)t WHERE Salary = HighestSalary;

-- Find the deviation of each sales from the minimum and maximum sales amounts

SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    MAX(Sales) OVER() HighestSales,
    MIN(Sales) OVER() LowestSales,
    Sales - MIN(Sales) OVER() DeviationFromMin,
    MAX(Sales) OVER() - Sales DeviationFromMax
FROM Sales.Orders