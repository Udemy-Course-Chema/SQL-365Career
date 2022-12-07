# RIGHT JOIN
use udemy_employees;

select * from dept_manager_dup;
select * from departments_duplicate;

-- RIGHT JOIN = RIGHT OUTER JOIN
select 
	d.dept_no, m.emp_no, d.dept_name
from 
	dept_manager_dup m
right join
	departments_duplicate d on m.dept_no = d.dept_no
order by m.dept_no desc;


select 
	d.dept_no, m.emp_no, d.dept_name
from 
	departments_duplicate d 
left join
	dept_manager_dup m on m.dept_no = d.dept_no
order by m.dept_no desc;


