# OTHER COMPARISON OPERATORS
/**
= : Equal to
> : Greater than
>=: Greater than or equal to
<=: Less than or equal to
< : Less than
<>: Different from
!=: Not equal
*/

USE udemy_employees;

SELECT * FROM employees
WHERE first_name != 'Mark';

# ITS SAYS: 'AFTER in the year 2000'
SELECT * FROM employees 
WHERE hire_date >= '2000-01-01';

SELECT * FROM employees
WHERE hire_date <= '1985-02-01';

-- EXERCISE
SELECT * FROM employees
WHERE gender = 'F' AND ( hire_date >= '2000-01-01' );

SELECT * FROM salaries
WHERE salary > 150000;
