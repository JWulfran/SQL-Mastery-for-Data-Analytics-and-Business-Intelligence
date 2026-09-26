    -- NULL means nothing, unknown!
    -- Empty string means string value has zero characters
    -- Blank space means the string contains one space or more space chararcters.

WITH Orders AS (
    SELECT 1 id, 'A' category UNION
    SELECT 2, NULL  UNION
    SELECT 3, '' UNION
    SELECT 4, ' ' 
)
SELECT 
    *,
    DATALENGTH(category) as CategoryLen
FROM Orders