# BETWEEN...AND OPERATORS

/**
Always used in combination with the AND operator. 

Will refer to an interval composed of two parts:
1. an interval below the first value indicated.
2. a second interval above the second value. 

APLIED WITH:
1. Date
2. String
3. Numbers
*/

SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';

# NOT BETWEEN...AND
SELECT * FROM employees 
WHERE hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';

-- EXERCISE
SELECT * FROM salaries
WHERE salary BETWEEN 66000 AND 70000;

SELECT * FROM salaries
WHERE emp_no NOT BETWEEN '10004' AND '10012';

SELECT dept_name FROM departments
WHERE dept_no BETWEEN 'd003' AND 'd006';