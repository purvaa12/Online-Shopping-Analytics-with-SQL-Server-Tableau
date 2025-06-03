-- Analyzing transaction data through product categories and discounts
SELECT P.Product_Category, SUM(T.Quantity) AS Total_Units_Sold
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY P.Product_Category
ORDER BY Total_Units_Sold DESC;

-- Average discount percentage by month
SELECT Month, AVG(Discount_pct) AS AvgDiscount
FROM Transactions
GROUP BY Month
ORDER BY CAST(Month AS INT);

-- Analyzing product popularity via product categories
SELECT
    P.Product_Category,
    SUM(T.Quantity) AS TotalUnitSold
FROM
    Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY
    P.Product_Category
ORDER BY
    TotalUnitSold DESC;

WITH TotalUnitSoldPerCategory AS (
    SELECT
        P.Product_Category,
        SUM(T.Quantity) AS TotalUnitSold
    FROM
        Transactions T
    JOIN Product P ON T.Product_SKU = P.Product_SKU
    GROUP BY
        P.Product_Category
)
SELECT TOP 5
    T.Product_Category,
    FORMAT(100.0 * T.TotalUnitSold / SUM(TotalUnitSold) OVER (), '0.00\%') AS PercentageOfTotalUnitSold
FROM
    TotalUnitSoldPerCategory T
ORDER BY
    T.TotalUnitSold DESC;

-- Analyzing transactional patterns throughout the year using TotalSpend
SELECT
    Month,
    SUM(Quantity) AS TotalQuantity,
    SUM(T.Avg_Price * T.Quantity) AS TotalAmountSpent
FROM
    Transactions T
GROUP BY
    Month
ORDER BY
    TotalAmountSpent DESC;

-- Analyzing coupon usage trends
SELECT
    Coupon_Status,
    COUNT(*) AS CouponCount
FROM
    Transactions
WHERE
    Coupon_Status IS NOT NULL
GROUP BY
    Coupon_Status;

SELECT
    Month,
    Coupon_Status,
    COUNT(*) AS CouponCount
FROM
    Transactions
WHERE
    Coupon_Status IS NOT NULL
GROUP BY
    Month, Coupon_Status
ORDER BY
    Month, Coupon_Status;

-- Analyzing coupon usage by product categories
SELECT P.Product_Category, COUNT(T.Coupon_Status) AS UsedCouponCount
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
WHERE T.Coupon_Status = 'Used'
GROUP BY P.Product_Category
ORDER BY UsedCouponCount DESC;

-- Analyzing total spending by location using TotalSpend
SELECT
    C.Location,
    SUM(T.Avg_Price * T.Quantity) AS TotalSpending
FROM
    Customer C
JOIN Transactions T ON C.Customer_ID = T.Customer_ID
GROUP BY
    C.Location
ORDER BY
    TotalSpending DESC;
-- Analyzing transaction data through product categories and discounts
SELECT P.Product_Category, SUM(T.Quantity) AS Total_Units_Sold
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY P.Product_Category
ORDER BY Total_Units_Sold DESC;

-- Average discount percentage by month
SELECT Month, AVG(Discount_pct) AS AvgDiscount
FROM Transactions
GROUP BY Month
ORDER BY CAST(Month AS INT);

-- Analyzing product popularity via product categories
SELECT
    P.Product_Category,
    SUM(T.Quantity) AS TotalUnitSold
FROM
    Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY
    P.Product_Category
ORDER BY
    TotalUnitSold DESC;

WITH TotalUnitSoldPerCategory AS (
    SELECT
        P.Product_Category,
        SUM(T.Quantity) AS TotalUnitSold
    FROM
        Transactions T
    JOIN Product P ON T.Product_SKU = P.Product_SKU
    GROUP BY
        P.Product_Category
)
SELECT TOP 5
    T.Product_Category,
    FORMAT(100.0 * T.TotalUnitSold / SUM(TotalUnitSold) OVER (), '0.00\%') AS PercentageOfTotalUnitSold
FROM
    TotalUnitSoldPerCategory T
ORDER BY
    T.TotalUnitSold DESC;

-- Analyzing transactional patterns throughout the year using TotalSpend
SELECT
    Month,
    SUM(Quantity) AS TotalQuantity,
    SUM(T.Avg_Price * T.Quantity) AS TotalAmountSpent
FROM
    Transactions T
GROUP BY
    Month
ORDER BY
    TotalAmountSpent DESC;

-- Analyzing coupon usage trends
SELECT
    Coupon_Status,
    COUNT(*) AS CouponCount
FROM
    Transactions
WHERE
    Coupon_Status IS NOT NULL
GROUP BY
    Coupon_Status;

SELECT
    Month,
    Coupon_Status,
    COUNT(*) AS CouponCount
FROM
    Transactions
WHERE
    Coupon_Status IS NOT NULL
GROUP BY
    Month, Coupon_Status
ORDER BY
    Month, Coupon_Status;

-- Analyzing coupon usage by product categories
SELECT P.Product_Category, COUNT(T.Coupon_Status) AS UsedCouponCount
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
WHERE T.Coupon_Status = 'Used'
GROUP BY P.Product_Category
ORDER BY UsedCouponCount DESC;

-- Analyzing total spending by location using TotalSpend
SELECT
    C.Location,
    SUM(T.Avg_Price * T.Quantity) AS TotalSpending
FROM
    Customer C
JOIN Transactions T ON C.Customer_ID = T.Customer_ID
GROUP BY
    C.Location
ORDER BY
    TotalSpending DESC;
