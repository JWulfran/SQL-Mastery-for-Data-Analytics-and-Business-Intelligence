    -- FORMAT() is use to rewrite a date in a specific format.

SELECT 
    OrderID,
    CreationTime,
    FORMAT(CreationTime, 'MM-dd-yyyy') USA_format,
    FORMAT(CreationTime, 'dd-MM-yyyy') EURO_format,
    FORMAT(CreationTime, 'dd') dd,
    FORMAT(CreationTime, 'ddd') ddd,
    FORMAT(CreationTime, 'dddd') dddd,
    FORMAT(CreationTime, 'MM') MM,
    FORMAT(CreationTime, 'MMM') MMM,
    FORMAT(CreationTime, 'MMMM') MMMM,
    FORMAT(CreationTime, 'yyyy') yyyy,
    FORMAT(CreationTime, 'yy') yy
FROM Sales.Orders

-- Show CreationTime using the following format :
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT
    OrderID,
    CreationTime,
    'Day ' + FORMAT(CreationTime, 'ddd MMM') + ' Q' + DATENAME(QUARTER, CreationTime)
    + ' ' + FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CustomFormat
from Sales.Orders


/* 
    ========================
        Formating Use Case
        DATA AGGREGATIONS
    ========================
*/ 

    -- We use FORMAT() to change the granularity of data before processing

SELECT
    FORMAT(OrderDate, 'MMM yy') OrderDate,
    COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')

/* 
    ========================
        Formating Use Case
        DATA STANDARDIZATION
    ========================
*/

    -- The data might can from differents sources with format for the date,
    -- so we can use FORMAT() to standardize the date format.