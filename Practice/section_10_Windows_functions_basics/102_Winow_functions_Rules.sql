    -- Windows Functions rules:
    -- #1 Windows functtions can be used only in the SELECT and ORDER BY clauses of a query.

SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(Sales) OVER(PARTITION BY OrderStatus) TotalSales
FROM Sales.Orders
ORDER BY SUM(Sales) OVER(PARTITION BY OrderStatus) DESC;
        -- Windows functions can't be used to filter data in the WHERE, GROUP BY clauses of a query, but they can be used in the ORDER BY clause.

    -- #2 Nesting Widows functions is not allowed. A window function cannot be used as an argument to another window function.
SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(SUM(Sales)OVER(PARTITION BY OrderStatus)) OVER(PARTITION BY OrderStatus) TotalSales
FROM Sales.Orders;

    -- #3 SQL execute Windows functions after the WHERE, GROUP BY, and HAVING clauses of a query are processed.

-- Find the total sales for each order, only for two products 101 and 102

SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    ProductID,
    Sales,
    SUM(Sales) OVER(PARTITION BY OrderStatus) TotalSales
FROM Sales.Orders
WHERE ProductID IN (101, 102);

    -- #4 windows functions can be used together with GROUP BY in the same query ONLY if the same columns are used.

-- Rank customers based on their total sales

        -- Step 1: Find the total sales for each customer
SELECT
    CustomerID,
    SUM(Sales) AS TotalSales
FROM Sales.Orders
GROUP BY CustomerID;

        -- Step 2: Rank customers based on their total sales
SELECT
    CustomerID,
    SUM(Sales) AS TotalSales,
    RANK() OVER(ORDER BY SUM(Sales) DESC) AS SalesRank
FROM Sales.Orders
GROUP BY CustomerID;

