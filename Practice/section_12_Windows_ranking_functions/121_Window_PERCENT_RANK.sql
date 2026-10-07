    -- PERCENT_RANK() calculates the relative position of each row

SELECT 
    Sales,
    PERCENT_RANK() OVER(ORDER BY Sales DESC) Dist
FROM Sales.Orders;

-- Find the products that fall within the highest 40% of the prices


SELECT
    *,
    CONCAT(DistRank * 100, '%') DistRankPerc
FROM (
    SELECT 
        Product,
        Price,
        CUME_DIST() OVER(ORDER BY Price DESC) DistRank
    FROM Sales.Products
)t WHERE DistRank <= 0.4;

SELECT
    *,
    CONCAT(DistRank * 100, '%') DistRankPerc
FROM (
    SELECT 
        Product,
        Price,
        PERCENT_RANK() OVER(ORDER BY Price DESC) DistRank
    FROM Sales.Products
)t WHERE DistRank <= 0.4;