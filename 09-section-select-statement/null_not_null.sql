# NULL | NOT NULL OPERATOR
USE udemy_employees;
/**
IS NOT NULL
used to extract values that are not null. 
*/
SELECT * FROM employees
WHERE first_name IS NOT NULL;

SELECT * FROM employees
WHERE first_name IS NULL;

-- EXERCISES
SELECT dept_name FROM departments
WHERE dept_no IS NOT NULL;
