/* 
    #1 SQL CLAUSES
        - we can use almost all clauses with the SET operators
        - The only exception is with ORDER BY, which is allowed only once at the end of the query 
    
    #2 NUMBER OF COLUMNS
        - The number of columns in each query must be the same
*/
SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION

SELECT
    FirstName,
    LastName
FROM Sales.Employees;

/*
    #3 DATA TYPES
        - Data types of columns in each query must be compatible
    
    #4 ORDER OF COLUMNS
        - The Order of columns in each query must be the same

    #5 COLUMN ALIASES
        - The columns names in the result set are determined 
          by the columns names specified in the first query.
        - The 1st query controls column names.
*/
SELECT
    CustomerID AS ID,
    LastName
FROM Sales.Customers

UNION

SELECT
    EmployeeID,
    LastName AS last_name       -- ==> That's will ignore ...
FROM Sales.Employees;

/*
    #6 CORRECT COLUMNS
    - Even if all rules are met and SQL shows no errors, the result may be incorrect.
    - Incorrect columns selections leads to inaccurate results.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION

SELECT
    LastName,
    FirstName    
FROM Sales.Employees;

-- The result is wrong !!!