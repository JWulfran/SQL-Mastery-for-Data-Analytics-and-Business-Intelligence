-- Sort the customer from the lowest to the highest scores,
-- with nulls appearing last

SELECT 
    CustomerID,
    Score
FROM Sales.Customers
ORDER BY Score ASC

    -- # Method 1 : Replace nulls values with big number

SELECT 
    CustomerID,
    Score,
    COALESCE(Score, 9999) CoalesceSorting
FROM Sales.Customers
ORDER BY COALESCE(Score, 9999) ASC

    -- # Method 2 : Use a condition for sorting

SELECT 
    CustomerID,
    Score
    -- CASE WHEN Score IS NULL THEN 1 ELSE 0 END Flag
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score
