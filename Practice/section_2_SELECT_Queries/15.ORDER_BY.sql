-- Retrieve all customer and sort the values by the highest score first

SELECT * FROM customers
ORDER BY score DESC;

-- Retrieve all customer and sort the values by the lowest score first

SELECT * FROM customers
ORDER BY score ASC;

/*
NESTED ORDER BY
*/

-- Retrieve all customers and sort the result by the country and by the highest score

SELECT * FROM customers
ORDER BY country ASC, score DESC;

    -- !!! Column order in "ORDER BY" in crucial, as sorting is sequential.
    -- The order in writting the name of columns is important. 
    -- Swicthing country and score columns, will sort the result with the score columns
    -- but the country will not be sorted.
    -- The columns country is more important and we must start that one 
    -- because the values could appears several times.

    -- " So Nested sorting only makes sense if you have repetition in your result and you can
    -- use the help of a second columns in order to make the sorting perfect. So that's it. "
    
    --                                                                               Baraa Khatib Salkini

