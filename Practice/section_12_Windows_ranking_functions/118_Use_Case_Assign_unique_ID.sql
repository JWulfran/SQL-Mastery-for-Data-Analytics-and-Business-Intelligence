-- Assign unique IDs to the rows of the 'Orders Archive' table

SELECT
    ROW_NUMBER() OVER(ORDER BY OrderID, OrderDate) UniqueID,
    *
FROM Sales.OrdersArchive

    -- PAGINATING : The process of breaking down a large data into smaller, more manageable chunks