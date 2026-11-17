CREATE DATABASE superstore_db;
USE superstore_db;
SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) FROM sales;
SELECT
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2) AS Avg_Order_Value
FROM sales;

SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Revenue
FROM sales
GROUP BY Month
ORDER BY Month;

SELECT 
    Month,
    Monthly_Revenue,
    ROUND(
        (Monthly_Revenue - LAG(Monthly_Revenue) OVER (ORDER BY Month)) 
        / LAG(Monthly_Revenue) OVER (ORDER BY Month) * 100, 2
    ) AS MoM_Growth_Percent
FROM (
    SELECT 
        DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
        SUM(Sales) AS Monthly_Revenue
    FROM sales
    GROUP BY Month
) AS monthly_data
ORDER BY Month;

SELECT 
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    SUM(Quantity) AS Units_Sold
FROM sales
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales
GROUP BY Region
ORDER BY Total_Revenue DESC;

use superstore_db;

SELECT COUNT(*) FROM sales;


SELECT Region,
       ROUND(SUM(Sales),2) AS Revenue,
       ROUND(SUM(Profit),2) AS Profit,
       ROUND(SUM(Profit)/SUM(Sales)*100, 1) AS Profit_Margin_Pct
FROM sales GROUP BY Region ORDER BY Revenue DESC;

SHOW COLUMNS FROM sales;

truncate table sales;


ALTER TABLE sales MODIFY Order_Date VARCHAR(20);
ALTER TABLE sales MODIFY Ship_Date VARCHAR(20);