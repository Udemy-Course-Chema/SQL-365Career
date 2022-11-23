use udemy_employees;

# PRECEDENCE
/**
ORDER:
1. AND
2. OR 
*/
SELECT * FROM employees
WHERE last_name = 'Denis' AND ( gender = 'M' OR gender = 'F');

-- EXERCISE
SELECT * FROM employees 
WHERE (first_name = 'Kellie' OR first_name = 'Aruna') AND gender = 'F';