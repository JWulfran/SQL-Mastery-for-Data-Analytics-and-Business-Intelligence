-- Display the full name of customers in a single fields
-- by merging their first and last names,
-- and add 10 bonus points to each customer's score.


SELECT 
    CustomerID,
    FirstName,
    LastName,
    FirstName + ' ' + COALESCE(LastName, ' ') AS FullName,           /* The COALESCE function manage the null value in the last name that's allows us to retrieve the full even if a value is null*/
    Score,
    COALESCE(Score, 0) + 10 AS ScoreWithBonus
FROM Sales.Customers