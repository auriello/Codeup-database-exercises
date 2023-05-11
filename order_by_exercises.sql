USE employees;

-- find all employees who first name Irene, Vidya, or Maya
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Modify the first query to order by first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

-- Update the query to order by first name and then last name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

-- Change the ORDER BY clause to order by last name before first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;


-- find employees whose last name starts with E
SELECT * FROM employees WHERE last_name LIKE 'E%';

-- Update the queries for employees with 'e' in their last name to sort by employee number
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;

-- Reverse the sort order for both queries
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;


-- find employees with a q in their last name
SELECT * FROM employees WHERE last_name LIKE '%q%';


-- PART TWO
-- find all employees whose first name Irena, VIdya or maya using oR
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- the above plus males
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

-- employees whose last name starts or ends with e
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- employees whose last name starts and ends with e
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- employees with a q but not qu in their last name
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

