-- At least one condition muste bee true

/*
    Condition 1         Condition 2         OR condition
    True                True                True
    False               True                True
    True                False               True
    False               False               False
*/

-- Retrieve all customers who are from USA or have a score greater than 500

SELECT * FROM customers
WHERE country = 'USA' OR score > 500 ;