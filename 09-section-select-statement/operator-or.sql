use udemy_employees;

/**
and -> conditions set on DIFFERENT COLUMNS
or -> conditions set on THE SAME COLUMNS
*/

SELECT * FROM employees;

SELECT * FROM employees 
WHERE first_name = 'Denis' AND gender = 'F' ;

SELECT * FROM employees 
WHERE first_name = 'Denis' OR first_name = 'Elvis' ;


