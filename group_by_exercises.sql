USE employees;

#     --find unique titles in the titls table
SELECT DISTINCT title
FROM titles;

# --find employees last name start and end with E
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

# -- employees with unique names first and last start with E
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

# unique names with q but not qu
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

# count the last query
SELECT last_name, COUNT(*) as name_count
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;




# find gender of irena vidya maya
SELECT COUNT(*) as count, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


