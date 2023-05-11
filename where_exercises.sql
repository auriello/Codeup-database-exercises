USE employees;

-- find all employees who first name Irene, Vidya, or Maya
    SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- find employees whose last name starts with E
SELECT * FROM employees WHERE last_name LIKE 'E%';

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

