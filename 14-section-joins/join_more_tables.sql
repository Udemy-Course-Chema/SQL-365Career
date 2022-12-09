# Join MORE THAN 2 TABlES
use udemy_employees;

select 
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
from
	employees e
join
	dept_manager m
    on 
		e.emp_no = m.emp_no
join 
	departments d
    on 
		m.dept_no = d.dept_no
;


-- RIGHT AND LEFT JOIN
select 
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
from
	employees e
join
	dept_manager m
    on 
		e.emp_no = m.emp_no
right join 
	departments d
    on 
		m.dept_no = d.dept_no
;

select 
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
from
	departments d
join 
	dept_manager m
    on 
		d.dept_no = m.dept_no
right join
	employees e
    on 
		m.emp_no = e.emp_no
;

-- Exercise
select * from dept_manager; -- emp_no
select * from employees;
select * from titles; -- emp_no
select * from departments; -- dept_no
select 
	e.first_name, 
    e.last_name, 
    e.hire_date,
    t.title, 
    m.from_date, 
    d.dept_name
from 
	employees e
join 
	titles t
    on 
		e.emp_no = t.emp_no
join 
	dept_manager m
    on
		e.emp_no = m.emp_no
join 
	departments d
    on
		m.dept_no = d.dept_no
where 
	t.title = 'Manager'
order by
	e.emp_no
;


# SECOND OPTIONS
select 
	e.first_name, 
    e.last_name, 
    e.hire_date,
    t.title, 
    m.from_date, 
    d.dept_name
from 
	employees e
join 
	titles t
    on 
		e.emp_no = t.emp_no
join 
	dept_manager m
    on
		e.emp_no = m.emp_no
join 
	departments d
    on
		m.dept_no = d.dept_no
	and 
		m.from_date = t.from_date
order by
	e.emp_no
;





