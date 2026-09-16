-- All conditions must be true

/*
    Condition 1         Condition 2         AND condition
    True                True                True
    False               True                False
    True                False               False
    False               False               False
*/

-- Retrieve all customers who are from USA and have a score greater than 500

SELECT * FROM customers
WHERE country = 'USA' AND score > 500