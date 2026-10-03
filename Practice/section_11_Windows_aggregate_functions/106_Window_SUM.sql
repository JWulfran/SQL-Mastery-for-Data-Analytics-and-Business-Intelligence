    -- SUM window function returns the sum of values within a window
    -- it accepts only numbers


-- USE CASE #1 : Overall analysis, Quick summary or snapshot of the entire dataset.

-- Find the total sales across all orders and the total sales for each product
-- Additionally provide details such as OrderID, OrderDate

SELECT
    OrderID,
    OrderDate,
    Sales,
    SUM(Sales) OVER() TotalSales,

-- USE CASE #2 : Total per group, group-wise analysis, to understand patterns within different categories.
    SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesPerProduct
FROM Sales.Orders;

--      Comparison Use Cases : compare the current value and aggregated value of window functions

-- USE CASE #3 : PART-TO-WHOLE analysis shows the contribution of each data point to the overall dataset.

-- Find the percentage contribution of each product's salees to the total sales

SELECT
    OrderID,
    ProductID,
    Sales,
    SUM(Sales) OVER() TotalSales,
    ROUND(CAST(Sales AS FLOAT)/ SUM(Sales) OVER()*100, 2) PercentageContribution
FROM Sales.Orders;