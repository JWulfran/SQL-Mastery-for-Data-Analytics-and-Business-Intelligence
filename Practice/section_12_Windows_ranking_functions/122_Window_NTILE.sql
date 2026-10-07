    -- NTILE() divides the rows into a specified number of approximately equal groups (Buckets)
    -- Bucket Size = Number of Rows / Number of buckets
    -- SQL Rule : Larger groups come first

SELECT 
    OrderID,
    Sales,
    NTILE(4) OVER(ORDER BY Sales DESC) FourBucket,
    NTILE(3) OVER(ORDER BY Sales DESC) ThreeBucket,
    NTILE(2) OVER(ORDER BY Sales DESC) TwoBucket,
    NTILE(1) OVER(ORDER BY Sales DESC) OneBucket

FROM Sales.Orders;

    -- Use Case : DATA segmention

-- Segment all orders into 3 categories : high, meduim and low sales.

SELECT
    *,
    CASE 
        WHEN Buckets = 1 THEN 'High'
        WHEN Buckets = 2 THEN 'Medium'
        WHEN Buckets = 3 THEN 'Low'
    END SalesSegmentations
FROM(
    SELECT
        OrderID,
        Sales,
        NTILE(3) OVER(ORDER BY Sales DESC) Buckets
    FROM Sales.Orders
)t;

    -- Use Case : Equalizing load

-- In order to export the data, divide the orders into 2 groups

SELECT
    NTILE(2) OVER(ORDER BY OrderID) Buckets,
    *
FROM Sales.Orders;