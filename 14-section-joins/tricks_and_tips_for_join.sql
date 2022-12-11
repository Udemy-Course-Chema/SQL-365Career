# TRICKS AND TIPS FOR JOIN
use udemy_employees;

select * from dept_manager;
-- Example: COLUMNS -> dept_name & average_salary. They are not RELATED.
select 
	d.dept_name, avg(s.salary) as average_salary
from 
	departments d
join
	dept_manager m
    on
		d.dept_no = m.dept_no
join
	salaries s
    on
		m.emp_no = s.emp_no
group by
	d.dept_name
order by
	-- d.dept_name asc
    average_salary desc
;

select 
	d.dept_name, avg(s.salary) as average_salary
from 
	departments d
join
	dept_manager m
    on
		d.dept_no = m.dept_no
join
	salaries s
    on
		m.emp_no = s.emp_no
group by
	d.dept_name
having 
	average_salary > 60000
order by
	-- d.dept_name asc
    average_salary desc
;

-- EXERCISE
select * from titles
where title like 'Mana%';
select * from employees;

select 
	e.gender, 
    count(e.gender) as count_genders
from 
	employees e
join 
	titles t
    on 
		e.emp_no = t.emp_no
where 
	t.title = 'Manager'
group by 
	e.gender
;
-- By This
select 
	e.gender, 
	count(dm.emp_no)
from 
	employees e
join
	dept_manager dm
    on
		e.emp_no = dm.emp_no
group by
	gender
;

