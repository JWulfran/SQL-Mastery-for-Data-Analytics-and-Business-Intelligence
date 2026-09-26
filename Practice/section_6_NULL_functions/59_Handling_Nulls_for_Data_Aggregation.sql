    -- ISNULL() | COALESCE handles the null before doing data aggregation

-- Find the average scores of the customers

SELECT 
    CustomerID,
    Score,
    COALESCE(Score,0) Score2,
    AVG(Score) OVER() AvgScore,
    AVG(COALESCE(Score,0)) OVER() Avgscore2
FROM Sales.Customers