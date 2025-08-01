-- Day 1 Code
CREATE TABLE menu_items (
    item_id INT,
    item_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(5, 2)
);
INSERT INTO menu_items VALUES (1, 'Samosa', 'Appetizer', 120.00);
INSERT INTO menu_items VALUES (2, 'Paneer Tikka', 'Appetizer', 280.50);
INSERT INTO menu_items VALUES (3, 'Chocolate Cake', 'Dessert', 150.00);
INSERT INTO menu_items VALUES (4, 'Meals', 'Main Course', 200.00);
INSERT INTO menu_items VALUES (5, 'Lassi', 'Drink', 50.00);
SELECT * FROM menu_items;
SELECT item_id, price FROM menu_items;
SELECT item_name FROM menu_items WHERE category = 'Dessert';
SELECT item_name, price FROM menu_items WHERE price > 100;
