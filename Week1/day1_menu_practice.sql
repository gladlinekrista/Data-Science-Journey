-- ====================================================================
-- Project Athena: Day 1 Practice
-- Author: [Your Name]
-- Date: 2025-07-31
-- Description: A basic SQL script to create, populate, and query
--              a restaurant menu table.
-- ====================================================================


-- Section 1: Table Creation
-- Define the structure (schema) for our menu_items table.
-- We use DECIMAL(5, 2) for price to ensure financial accuracy.

CREATE TABLE menu_items (
    item_id INT,
    item_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(5, 2)
);


-- Section 2: Data Insertion
-- Populate the menu_items table with some sample data.

INSERT INTO menu_items VALUES (1, 'Samosa', 'Appetizer', 120.00);
INSERT INTO menu_items VALUES (2, 'Paneer Tikka', 'Appetizer', 280.50);
INSERT INTO menu_items VALUES (3, 'Chocolate Cake', 'Dessert', 150.00);
INSERT INTO menu_items VALUES (4, 'Meals', 'Main Course', 200.00);
INSERT INTO menu_items VALUES (5, 'Lassi', 'Drink', 50.00);


-- Section 3: Data Queries
-- Ask questions to retrieve specific information from the table.

-- Query 1: Retrieve all information for every item on the menu.
SELECT * FROM menu_items;

-- Query 2: Retrieve only the ID and price for each item.
SELECT item_id, price FROM menu_items;

-- Query 3: Find all items that belong to the 'Dessert' category.
SELECT item_name FROM menu_items WHERE category = 'Dessert';

-- Query 4 (Challenge): Find the names and prices of items that cost more than 100.
SELECT item_name, price FROM menu_items WHERE price > 100;

-- ====================================================================
-- End of Script
-- ====================================================================
