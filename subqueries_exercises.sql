USE employees;


--Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE employee_id = 101010);


-- Find all the titles held by all employees with the first name Aamod
SELECT t.title
FROM titles t
         JOIN employees e ON t.employee_id = e.employee_id
WHERE e.first_name = 'Aamod';

--Find all the current department managers that are female.
SELECT e.first_name, e.last_name
FROM employees e
         JOIN employee_department ed ON e.employee_id = ed.employee_id
         JOIN departments d ON ed.department_id = d.department_id
WHERE ed.is_current_manager = 1
  AND e.gender = 'Female';


