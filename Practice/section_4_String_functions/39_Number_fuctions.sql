-- Number functions

    -- ROUND()
SELECT 
    3.14159265359 AS pi,
    ROUND(3.14159265359, 3) AS round_3,
    ROUND(3.14159265359, 2) AS round_2,
    ROUND(3.14159265359, 1) AS round_1,
    ROUND(3.14159265359, 0) AS round_0

    -- ABS()
SELECT
    -10 AS negative,
    ABS(-10) AS negative_turn_positive,
    ABS(10) AS positive_stay_positive
