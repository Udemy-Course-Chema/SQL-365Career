# HAVING 
USE udemy_employees;

/**
Refines the ouput from records that do not satisfy a certain condition. 
Frequently implemented with GROUP BY. 
*/
/**
SELECT column_name(s)
FROM table_name 
WHERE conditions
GROUP BY column_name(s)
HAVING conditions
ORDER BY column_name(s)
*/
SELECT * FROM employees
HAVING hire_date > '2000-01-01';

-- OUTPUT: ERROR 
SELECT first_name, COUNT(first_name) AS names_count FROM employees
WHERE COUNT(first_name) > 50
GROUP BY first_name
ORDER BY first_name;

-- BEST PRACTICE
-- `Extract all first names that appear more than 250 times in the "employees" table.`
SELECT first_name, COUNT(first_name) AS names_count FROM employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

-- Exercise 1: Select all employees whose average salary is higher than $120,000 per annum.
SELECT * FROM salaries;
SELECT emp_no, AVG(salary)  FROM salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

/*
SELECT

    *, AVG(salary)

FROM

    salaries

WHERE

    salary > 120000

GROUP BY emp_no 
*/



