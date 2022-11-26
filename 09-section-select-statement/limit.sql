# LIMIT

-- "Please show me the employee numbers of the 10 highest paid
-- employees in the database".
select emp_no, salary from salaries
order by salary desc
limit 10;

-- Exercise: Select the first 100 rows from the ‘dept_emp’ table. 
select * 
from dept_emp
limit 100;