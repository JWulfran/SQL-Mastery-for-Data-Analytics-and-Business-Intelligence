    -- ISDATE() checks if a value is a date, ann returns a boolean (0 or 1)

SELECT
    ISDATE('123') Daycheck1,                    /* ==> INT */
    ISDATE('2025-08-31') DayCheck2,             /* ==> DATE */
    ISDATE('20-08-2025') DayCheck3,             /* ==> DATE: Not in SQL Date format */
    ISDATE('2025') DayCheck4,                   /* ==> DATE: year */
    ISDATE('08') DayCheck5;                     /* ==> DATE: month */

-- DATA cleaning

SELECT
    OrderDate,
    ISDATE(OrderDate),
    CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE)
        ELSE '1999-01-01'
    END NewOrderDate
FROM
(
    SELECT '2025-08-20' AS OrderDate UNION
    SELECT '2025-08-21' UNION
    SELECT '2025-08-22' UNION
    SELECT '2025-08-23' UNION
    SELECT '2025-08'
)t