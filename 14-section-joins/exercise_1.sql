# Exercise 1
use udemy_employees;


select * from employees;
select * from dept_manager;

select e.emp_no, e.first_name, e.last_name, d.dept_no, d.from_date
from 
	employees e
left join dept_manager d on e.emp_no = d.emp_no
where 
	e.last_name = 'Markovitch'
order by d.dept_no desc, e.emp_no;

