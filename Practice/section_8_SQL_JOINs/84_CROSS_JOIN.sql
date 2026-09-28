    -- CROSS JOIN combines every row from the left with every row from the right
    --          All possible combinations - Cartesian Join -

-- Generate all possible combinations of customers and orders

SELECT *
FROM customers
CROSS JOIN orders