# JOIN AND WHERE together 
use udemy_employees;

select 
	e.emp_no, e.first_name, e.last_name, s.salary
from 
	employees e
join 
	salaries s
on 
	e.emp_no = s.emp_no
where 
	s.salary > 145000;
    
-- set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '' );
-- select @@global.sql_mode;

-- Exercise
select * from employees;
select * from titles;
select 
	e.first_name, e.last_name, e.hire_date, t.title
from
	employees e
join 
	titles t
on 
	e.emp_no = t.emp_no
where 
	first_name = 'Margareta'
    and 
    last_name = 'Markovitch'
order by
	e.emp_no;