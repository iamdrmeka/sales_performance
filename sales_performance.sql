-- Data Exploration
select * FROM sales_performance;

-- rename total sales column to revenue
ALTER TABLE sales_performance
RENAME COLUMN `Total Sales` TO revenue;


-- Total Revenue
SELECT
    FORMAT(SUM(revenue), 2) AS Total_Revenue
FROM sales_performance;

-- Revenue and sales By Regions
SELECT
    Region,
    FORMAT(SUM(revenue), 2) as Revenue,
    SUM(`Units Sold`) as Sales,
    FORMAT(sum(Profit), 2) as Profit
FROM sales_performance
GROUP BY region;

-- Sales and revenue by Category and  sub category

   -- category
SELECT
    `Product Category` as Category,
    SUM(revenue) as Revenue,
    SUM(`Units Sold`) Sales,
    SUM(profit)
FROM sales_performance
GROUP BY `Product Category`
ORDER BY revenue DESC;

    --Sub category
SELECT
    `Product Sub-Category` AS  Sub_category,
    SUM(revenue) as Revenue,
    SUM(`Units Sold`) Sales,
    SUM(profit) AS PROFIT
FROM sales_performance
GROUP BY `Product Sub-Category`
ORDER BY revenue DESC;

