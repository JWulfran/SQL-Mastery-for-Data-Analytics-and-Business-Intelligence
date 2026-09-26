    -- NULLIF() compares two expressions and returns :
    --  - Null, if they're equal
    --  - the first value, if they're not equal

-- Find the sales price for each order by dividing sales by quantity

SELECT 
    OrderID,
    Sales,
    Quantity,
    Sales/NULLIF(Quantity,0) AS Price
FROM sales.Orders