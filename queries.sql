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

-- Sales and Profit by Discount Level
-- Business Question:
-- How does discounting impact sales and profitability?
SELECT
    Discount,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Discount

SELECT
    Discount,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Discount
HAVING SUM(Profit) < 0
ORDER BY Discount;
ORDER BY Discount;

-- Sales and Profit by Customer Segment
-- Business Question:
-- Which customer segments generate the most sales and profit?

SELECT
    Segment,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;

SELECT
    Segment,
    ROUND(SUM(Profit) / SUM(Quantity), 2) AS profit_per_unit
FROM superstore
GROUP BY Segment
ORDER BY profit_per_unit DESC;



