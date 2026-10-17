-- Generate a sequence of number from 1 to 20

WITH Series AS
(
    SELECT
    1 AS MyNumber
    UNION ALL
    -- Recursive Query
    SELECT
    MyNumber + 1
    FROM Series
    WHERE MyNumber < 20
)
-- Main Query
SELECT *
FROM Series
-- OPTION (MAXRECURSION 10)
;
-- Task: Show the employee hierachy by displaying each employee's level within the organisation

WITH CTE_Emp_Hierachy AS
(
    -- Anchor Query
    SELECT 
        EmployeeID,
        FirstName,
        ManagerID,
        1 AS Level
    FROM Sales.Employees
    WHERE ManagerID IS NULL
    UNION ALL
    -- Recursive Query
    SELECT
        e.EmployeeID,
        e.FirstName,
        e.ManagerID,
        ceh.[Level] +1
    FROM Sales.Employees e
    INNER JOIN CTE_Emp_Hierachy ceh
    ON e.ManagerID = ceh.EmployeeID
)
SELECT
*
FROM CTE_Emp_Hierachy