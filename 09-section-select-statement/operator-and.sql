# OPERATOR AND

/**
There are many operators:
and, or, in, not in, like, not like, between...and, exists, not exists, 
is null, is not null, comparisson operators, etc. 
*/

SELECT first_name, last_name FROM employees
WHERE first_name = 'Denis' AND gender = 'M';

-- Exercise 1 
SELECT * FROM employees
WHERE first_name = 'Kellie' AND gender = 'F';

