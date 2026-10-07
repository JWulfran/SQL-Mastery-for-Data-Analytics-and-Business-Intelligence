-- Identify duplicate rows in the table 'OrderArchive' and return a clean result without any duplicates

SELECT
    *
FROM (
    SELECT
        ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) rn,
        *
    FROM Sales.OrdersArchive
)t WHERE rn=1;

    -- If the rank exceeds 1, it indicates that the primary key is not unique