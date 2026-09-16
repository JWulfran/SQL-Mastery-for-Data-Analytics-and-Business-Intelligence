-- Find the total score for each country

SELECT country, SUM(score) AS total_score FROM customers
GROUP BY country;

    -- AS (alias) is a shorthand name (label) assigned to a columns or table in a query.
    -- !!! This label exist only in the query.
    -- All columns in the "SELECT" must be aggregated or included in the group by.

-- Find the total score and the total number of customer for each country

SELECT country, 
        SUM(score) AS total_score,
        COUNT(id) AS total_customers
FROM customers
GROUP BY country;