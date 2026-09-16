-- HAVING is use to filter data after aggregation
-- WHERE is use to filter data before aggregation

-- Find the average score for each country considering only customer with a score equal to 0
-- and return only those countries with an average score greater than 430.

    -- selecting all customers
SELECT * FROM customers;

    -- selecting customers with a score equal to zero
SELECT * FROM customers
WHERE score != 0;

    -- Calcuting the average score by country
SELECT country, AVG(score) FROM customers
WHERE score != 0
GROUP BY country;

    -- retrieve those countries with an average score greater than 430
SELECT country, AVG(score) AS avg_Score FROM customers
WHERE score != 0 
GROUP BY country
HAVING AVG(score) > 430;
