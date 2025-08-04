-- ====================================================================
-- Project Athena: Day 3 Practice
-- Author: [Your Name]
-- Date: 2025-08-04
-- Description: A script for creating a second table and learning
--              to combine data using INNER and LEFT JOINs.
-- ====================================================================


-- Section 1: Table Management (Debugging Step)
-- First, we drop the table if it exists to ensure a clean start.
DROP TABLE IF EXISTS orders;


-- Section 2: Table Creation
-- Create a new 'orders' table to track customer orders.
-- The 'item_id' column will be our key to join with the 'menu_items' table.

CREATE TABLE orders (
    order_id INT,
    item_id INT,
    quantity INT,
    order_time TIMESTAMP
);


-- Section 3: Data Insertion
-- Populate the 'orders' table with some sample data.

INSERT INTO orders VALUES (101, 3, 2, '2025-08-04 19:30:00');
INSERT INTO orders VALUES (102, 5, 1, '2025-08-04 19:32:00');
INSERT INTO orders VALUES (103, 1, 3, '2025-08-04 19:35:00');
INSERT INTO orders VALUES (104, 3, 1, '2025-08-04 19:36:00');


-- Section 4: JOIN Queries
-- Combine data from 'menu_items' and 'orders' tables.

-- Query 1: INNER JOIN (Find perfect matches)
-- Shows only the orders for items that exist on our menu.
-- We use aliases (o, mi) for cleaner, more professional code.
SELECT
    mi.item_name,
    o.quantity
FROM
    orders AS o
INNER JOIN
    menu_items AS mi ON o.item_id = mi.item_id;


-- Query 2: LEFT JOIN (Find all items, and any matching orders)
-- Shows every item from the 'menu_items' (left) table.
-- If an item was never ordered, the order columns will show NULL.
SELECT
    mi.item_name,
    mi.price,
    o.order_id,
    o.quantity
FROM
    menu_items AS mi
LEFT JOIN
    orders AS o ON mi.item_id = o.item_id;


-- Query 3: Real-World Business Question
-- "Which menu items have never been ordered?"
-- We use the LEFT JOIN and filter for where the order information is NULL.
SELECT
    mi.item_name
FROM
    menu_items AS mi
LEFT JOIN
    orders AS o ON mi.item_id = o.item_id
WHERE
    o.order_id IS NULL;

-- ====================================================================
-- End of Script
-- ====================================================================
