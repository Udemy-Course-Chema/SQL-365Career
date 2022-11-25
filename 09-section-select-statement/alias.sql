# ALIAS
USE udemy_employees;
SELECT first_name, COUNT(first_name) AS names_count FROM employees
GROUP BY first_name;

-- Exercise 1: Write a query that obtains two columns. 
-- The first column must contain annual salaries higher than 80,000 dollars. 
-- The second column, renamed to “emps_with_same_salary”, must show the number 
-- of employees contracted to that salary. Lastly, sort the output by the first column.  
SELECT salary, COUNT(emp_no) AS emps_with_same_salary FROM salaries
WHERE salary > 80000
GROUP BY salary
ORDER BY salary;