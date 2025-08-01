-- Day 2 Code
SELECT COUNT(*) AS total_items FROM menu_items;
SELECT SUM(price) AS total_value FROM menu_items;
SELECT ROUND(AVG(price), 2) AS average_price FROM menu_items;
SELECT
    category,
    COUNT(item_id) AS number_of_items
FROM
    menu_items
GROUP BY
    category;
SELECT
    category,
    ROUND(AVG(price), 2) AS average_price_per_category
FROM
    menu_items
GROUP BY
    category;
