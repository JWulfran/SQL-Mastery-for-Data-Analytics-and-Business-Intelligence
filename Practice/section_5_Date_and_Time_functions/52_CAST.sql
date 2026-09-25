    -- CAST() converts a value to a specific data type
    -- it's turns one data type to another
SELECT
    CAST('123' AS int) AS [String to int],
    CAST(123 AS varchar) AS [Int to String],
    CAST('2025-08-20' AS date) AS [String to Date],
    CAST('2025-08-20' AS datetime) AS [String to datetime],
    CAST('2025-08-20' AS datetime2) AS [String to datetime2],
    CAST(CreationTime AS date) AS [Datetime to Date]
FROM Sales.Orders