-- Total Sales and Profit by Region
-- Business Question:
-- Which regions generate the highest sales and profit?

SELECT
    Region,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- Sales and Profit by Category
-- Business Question:
-- Which product categories generate the most sales and profit?

SELECT
    Category,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

