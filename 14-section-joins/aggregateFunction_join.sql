# Aggregate Function with JOIN
use udemy_employees;

-- Find the average salaries of men and women 
-- in the company.
select 
	e.gender, avg(s.salary) as average_salary
from 
	employees e
join 
	salaries s 
on
	e.emp_no = s.emp_no
Group By gender;