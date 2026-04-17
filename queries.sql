-- Total Sales and Profit by Region
-- Business Question:
-- Which regions generate the highest sales and profit?
SELECT
    Region,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM samplesuperstore
GROUP BY Region
ORDER BY total_sales DESC;

-- Top Sub-Categories by Sales and Profit
-- Business Question:
-- Which sub-categories drive the highest revenue and profit?
SELECT
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM samplesuperstore
GROUP BY Category, "Sub-Category"
ORDER BY total_sales DESC
LIMIT 10;

-- Top Sub-Categories by Sales and Profit
-- Business Question:
-- Which sub-categories drive the highest revenue and profit?
SELECT
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Category, "Sub-Category"
ORDER BY total_sales DESC
LIMIT 10;
