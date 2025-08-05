-- ====================================================================
-- Project Athena: SQL JOINs Masterclass
-- Author: [Your Name]
-- Date: 2025-08-05
-- Description: A script demonstrating all major types of SQL JOINs
--              using an Employees and Departments example.
-- ====================================================================


-- Section 1: Table Management
-- Drop tables if they exist to ensure a clean run every time.
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;


-- Section 2: Table Creation
CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);


-- Section 3: Data Insertion
INSERT INTO Employees VALUES (1, 'Alice', 101);
INSERT INTO Employees VALUES (2, 'Bob', 102);
INSERT INTO Employees VALUES (3, 'Charlie', 103);
INSERT INTO Employees VALUES (4, 'David', NULL);

INSERT INTO Departments VALUES (101, 'Sales');
INSERT INTO Departments VALUES (102, 'Marketing');
INSERT INTO Departments VALUES (104, 'Finance');


-- Section 4: JOIN Queries

-- Query 1: INNER JOIN (Find perfect matches)
-- "Show me only the employees assigned to an existing department."
SELECT
    e.emp_name,
    d.dept_name
FROM
    Employees AS e
INNER JOIN
    Departments AS d ON e.dept_id = d.dept_id;


-- Query 2: LEFT JOIN (Show all employees)
-- "Show me all employees, and their department if they have one."
SELECT
    e.emp_name,
    d.dept_name
FROM
    Employees AS e
LEFT JOIN
    Departments AS d ON e.dept_id = d.dept_id;


-- Query 3: RIGHT JOIN (Show all departments)
-- "Show me all departments, and any employees within them."
SELECT
    e.emp_name,
    d.dept_name
FROM
    Employees AS e
RIGHT JOIN
    Departments AS d ON e.dept_id = d.dept_id;


-- Query 4: FULL OUTER JOIN (Show everything)
-- "Show me all employees and all departments, matching where possible."
SELECT
    e.emp_name,
    d.dept_name
FROM
    Employees AS e
FULL OUTER JOIN
    Departments AS d ON e.dept_id = d.dept_id;


-- ====================================================================
-- End of Script
-- ====================================================================
