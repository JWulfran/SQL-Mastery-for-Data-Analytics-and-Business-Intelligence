    -- DATA policy : set the rules that defines how data should be handled

-- # DATA policy 1 : only use NULLs and empty strings, but avoid blank spaces.

WITH Orders AS (
    SELECT 1 id, 'A' category UNION
    SELECT 2, NULL  UNION
    SELECT 3, '' UNION
    SELECT 4, ' ' 
)
SELECT 
    *,
    -- DATALENGTH(category) as CategoryLen,
    -- DATALENGTH(TRIM(category)) as Policy1
    TRIM(category) Policy1
FROM Orders;

-- # DATA policy 2 : Only use NULLs and avoid using empty string and blank spaces

WITH Orders AS (
    SELECT 1 id, 'A' category UNION
    SELECT 2, NULL  UNION
    SELECT 3, '' UNION
    SELECT 4, ' ' 
)
SELECT 
    *,
    TRIM(category) Policy1,
    NULLIF(TRIM(category), '') Policy2    
FROM Orders;

        -- USE CASE : Replacing empty strings and blanks with NULL during data preparation before insering into
        --              a database to optimize storage and performance.

-- DATA policy 3 : Use a default value for example, 'UNKNOWN' and avoid using nulls, empty string and blank spaces.

WITH Orders AS (
    SELECT 1 id, 'A' category UNION
    SELECT 2, NULL  UNION
    SELECT 3, '' UNION
    SELECT 4, ' ' 
)
SELECT 
    *,
    TRIM(category) Policy1,
    NULLIF(TRIM(category), '') Policy2,    
    COALESCE(NULLIF(TRIM(category), ''), 'UNKNOWN') Policy3
FROM Orders;

        -- USE CASE : Replacing empty strings, blanks, NULL with a default value during data preparation 
        --              before using it in reporting to improve readiblity and reduce confusion