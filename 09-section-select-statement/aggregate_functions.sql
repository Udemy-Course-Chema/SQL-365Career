# AGGREGATE FUNCTIONS
USE udemy_employees;
/**
Definition: They are applied on multiple rows of a single column of a table
and return an output of a single value.
There are 5 aggregate functions:

1. COUNT() : counts the number of non-null records in a field.
2. SUM() : sums all the non-null values in a column.
3. MAX() : returns the maxium value from the entire list. 
4. MIN() : returns the min value from the entire list. 
5. AVG() : Calculates the average of all non-null values belonging to a certain column of a table.
*/

-- Examples: How many employees are registered in our database?
SELECT COUNT(emp_no) FROM employees;

-- Nulls
SELECT COUNT(emp_no) FROM employees WHERE first_name IS NULL;

-- How many different names can be found in the "employees" table?
SELECT COUNT( DISTINCT first_name) FROM employees;

-- Exercise 1: How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
seLECT * FrOM Salaries;
seLECT CoUNT(SAlary) FrOM Salaries WHERE Salary >= 100000; # My answer
seLECT CoUNT(*) FrOM Salaries WHERE Salary >= 100000; # the answer

-- Exercise 2: How many managers do we have in the “employees” database?
select COUNT(*) FROM dept_manager;
