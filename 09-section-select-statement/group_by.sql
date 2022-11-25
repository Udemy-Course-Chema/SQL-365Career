# GROUP BY

/**
Result can be grouped according to a specific field or fields.
Group by must be placed inmediately after the WHERE conditions, if any, and just before the ORDER BY clause.
*/

SELECT first_name FROM employees GROUP BY first_name;
-- same as 
SELECT DISTINCT first_name FROM employees;

SELECT first_name, COUNT(first_name) FROM employees
GROUP BY first_name;

SELECT first_name, COUNT(first_name) FROM employees
GROUP BY first_name
ORDER BY first_name DESC;