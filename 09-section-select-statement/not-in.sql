USE udemy_employees;

# NOT IN

-- BAD CODE
SELECT * FROM employees
WHERE first_name = 'Cathie' OR first_name = 'Mark' OR first_name = 'Nathan';

-- GOOD CODE WITH `IN`, WAY FASTER than bad code. 
SELECT * FROM employees 
WHERE first_name IN ('Cathie', 'Mark','Nathan');

# Same but in contrary. 
SELECT * FROM employees 
WHERE first_name NOT IN ('Cathie', 'Mark','Nathan');

-- EXERCISE
# Exercise 1.
SELECT * FROM employees
WHERE first_name IN ('Denis', 'Elvis');

# Exercise 2
SELECT * FROM employees
WHERE first_name NOT IN ('John', 'Mark', 'Jacob');



