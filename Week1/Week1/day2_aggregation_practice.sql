-- ====================================================================
-- Project Athena: Day 2 Practice
-- Author: [Your Name]
-- Date: 2025-08-01
-- Description: A script demonstrating the use of aggregate functions
--              and the GROUP BY clause to summarize menu data.
-- ====================================================================


-- Section 1: Basic Aggregations
-- These queries calculate a single summary value for the entire table.

-- Query 1: How many total items are on the menu?
SELECT COUNT(*) AS total_items FROM menu_items;

-- Query 2: What is the total value of all items on the menu?
SELECT SUM(price) AS total_value FROM menu_items;

-- Query 3: What is the average price of an item, rounded to 2 decimal places?
SELECT ROUND(AVG(price), 2) AS average_price FROM menu_items;


-- Section 2: Grouped Aggregations
-- These queries use GROUP BY to calculate summaries for each category.

-- Query 4: How many items are in each category?
SELECT
    category,
    COUNT(item_id) AS number_of_items
FROM
    menu_items
GROUP BY
    category;

-- Query 5 (Challenge): What is the average price for each category, rounded nicely?
SELECT
    category,
    ROUND(AVG(price), 2) AS average_price_per_category
FROM
    menu_items
GROUP BY
    category;

-- ====================================================================
-- End of Script
-- ====================================================================
