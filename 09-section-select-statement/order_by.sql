# ORDER BY
USE udemy_employees;

SELECT * FROM employees ORDER BY first_name;

SELECT * FROM employees ORDER BY emp_no;

SELECT * FROM employees ORDER BY first_name, last_name;

-- Exercise 1: Select all data from the “employees” table, ordering it by “hire date” in descending order.
SELECT * FROM employees ORDER BY hire_date DESC;