/* 
    ========================
        DATA AGGREGATION
    ========================
*/ 

-- How many orders were placed each year ?
SELECT                      
    YEAR(OrderDate),
    COUNT(*) AS NrOfOrder
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

-- How many orders were placed each month ?
    -- With the function MONTH() , we getting just the number of month.
SELECT
    MONTH(OrderDate),
    COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

    -- We could have the name of the month by using DATENAME()
SELECT
    DATENAME(MONTH,OrderDate),
    COUNT(*) AS NrOfOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate)

/* 
    ========================
        DATA FILTERING
    ========================
*/ 

-- Show all orders that were placed during te month of February

SELECT * FROM Sales.Orders
WHERE MONTH(OrderDate) = 2

    -- Best practice : Filtering data using an integer is faster than using a string
    --                  Avoid using DATENAME() for filtering data instead use DATEPART(), MONTH() or YEAR()
