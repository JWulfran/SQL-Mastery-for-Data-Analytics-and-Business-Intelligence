    -- AVG window function returns the average of values within a window
    -- it accepts only numbers

-- USE CASE #1 : Overall analysis, Quick summary or snapshot of the entire dataset. 

-- Find the average sales across all orders an the average sales for each product
-- Additionally provide details such as OrderID, OrderDate

SELECT
    OrderID,
    OrderDate,
    Sales,
    AVG(Sales) OVER() AverageSales,
    AVG(Sales) OVER(PARTITION BY ProductID) AverageSalesPerProduct
FROM Sales.Orders;

-- USE CASE #2 : Total per group, group-wise analysis, to understand patterns within different categories.

-- Find the average score for the customers
-- Additionally provide details such as CustomerID and LastName

SELECT
    CustomerID,
    LastName,
    Score,
    AVG(Score) OVER() AverageScore
FROM Sales.Customers;

-- Find the average scores of customers
-- Additionally provide details such as CustomerID and LastName

    -- Without handling NULLs

SELECT
    CustomerID,
    LastName,
    Score,
    AVG(Score) OVER() AverageScore
FROM Sales.Customers;

    -- Handling NULLs

SELECT
    CustomerID,
    LastName,
    Score,
    AVG(Score) OVER() AverageScore,
    AVG(COALESCE(Score, 0)) OVER() AS AverageScoreWithNullsHandled
FROM Sales.Customers;

-- USE CASE #3 : Compare to average, helps to evaluate a whether a value is above or below the average

-- Find all orders where sales are higher than the average sales across all orders

SELECT * FROM (
    SELECT
        OrderID,
        ProductID,
        Sales,
        AVG(Sales) OVER() AverageSales
    FROM Sales.Orders
)t WHERE Sales > AverageSales;
