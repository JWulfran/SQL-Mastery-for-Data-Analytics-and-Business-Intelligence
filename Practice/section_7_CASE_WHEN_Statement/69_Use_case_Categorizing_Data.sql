-- Create report showing total sales for each of the following categories :
-- High (sales over 50), Medium (sales between 20 and 50) and Low (sales 20 or less)
-- Sort the categories from highest sales to lowest

SELECT
    Category,
    SUM(Sales) AS TotalSales
FROM (
    SELECT
        OrderID,
        Sales,
        CASE 
            WHEN Sales > 50 THEN 'High'
            WHEN Sales > 20 THEN 'Medium'
            ELSE 'Low'
        END Category
    FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC


        -- The data type of the output of a case statement must be matching