-- Create the database
CREATE DATABASE join_test_db;

-- Switch to the newly created database
USE join_test_db;

-- Create the employees table
CREATE TABLE employees (
                           employee_id INT,
                           first_name VARCHAR(50),
                           last_name VARCHAR(50),
                           hire_date DATE,
                           PRIMARY KEY (employee_id)
);

-- Create the departments table
CREATE TABLE departments (
                             department_id INT,
                             department_name VARCHAR(50),
                             PRIMARY KEY (department_id)
);

-- Create the employee_department table
CREATE TABLE employee_department (
                                     employee_id INT,
                                     department_id INT,
                                     PRIMARY KEY (employee_id, department_id),
                                     FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
                                     FOREIGN KEY (department_id) REFERENCES departments(department_id)
);




--Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.department_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM departments d
         JOIN employee_department ed ON d.department_id = ed.department_id
         JOIN employees e ON ed.employee_id = e.employee_id
WHERE ed.is_current_manager = 1;

-- Find the name of all departments currently managed by women.
SELECT d.department_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM departments d
         JOIN employee_department ed ON d.department_id = ed.department_id
         JOIN employees e ON ed.employee_id = e.employee_id
WHERE ed.is_current_manager = 1
  AND e.gender = 'Female';


-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(*) AS Total
FROM titles t
         JOIN employees e ON t.employee_id = e.employee_id
         JOIN employee_department ed ON e.employee_id = ed.employee_id
         JOIN departments d ON ed.department_id = d.department_id
WHERE d.department_name = 'Customer Service'
  AND ed.is_current_manager = 0
GROUP BY t.title;

-- Find the current salary of all current managers.
SELECT d.department_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`, s.salary AS `Salary`
FROM departments d
         JOIN employee_department ed ON d.department_id = ed.department_id
         JOIN employees e ON ed.employee_id = e.employee_id
         JOIN salaries s ON e.employee_id = s.employee_id
WHERE ed.is_current_manager = 1;


