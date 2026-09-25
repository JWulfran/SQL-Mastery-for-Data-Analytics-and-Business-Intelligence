    -- CONVERT() is use to change the type of data, 
    -- it's converts a date or time value to a different data type 

SELECT
    CONVERT(INT, '123') AS [String to Int convert],
    CONVERT(DATE, '2025-08-20') AS [String to Date convert],
    -- Casting : changing the data type from one to another
    CreationTime,
    CONVERT(DATE, CreationTime) AS [DateTime To Date convert],
    -- Convert the date time and apply a specific format
    CONVERT(varchar, CreationTime, 32) AS [USA std. Style:32],
    CONVERT(varchar, CreationTime, 34) AS [EURO std. style:34]
FROM Sales.Orders