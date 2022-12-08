# CROSS JOIN
-- Connect ALL values from (n) tables
-- particularly useful when the tables in a database are not well connected
use udemy_employees;

select 
	dm.*, d.*
from 
	dept_manager dm
cross join
	departments d
order by dm.emp_no, d.dept_no desc;

-- OLD SYNTAX
select 
	dm.*, d.*
from
	dept_manager dm, 
    departments d
order by dm.emp_no, d.dept_no;

-- New and without CROSS and "ON" 
-- JOIN without ON is not the best practice
-- CROSS JOIN better. 
select 
	dm.*, d.*
from
	dept_manager dm
join 
	departments d
order by dm.emp_no, d.dept_no;

-- The same as before
select 
	dm.*, d.*
from
	dept_manager dm
inner join 
	departments d
order by dm.emp_no, d.dept_no;

-- Where clause
select 
	dm.*, d.*
from 
	departments d 
cross join
	dept_manager dm
where 
	d.dept_no <> dm.dept_no
order by 
	dm.emp_no, d.dept_no;
    
    
-- ADVANCED LEVEL
select 
	e.*, d.*
from
	departments d
cross join
	dept_manager dm
join 
	employees e
    on 
		dm.emp_no = e.emp_no
where 
	d.dept_no <> dm.dept_no 
order by dm.emp_no, d.dept_no;


-- Exercise
select * from dept_manager;
select * from departments;

select 
	dm.*, d.*
from 
	departments d
cross join 
	dept_manager dm
where 
	d.dept_no = 'd009'
order by
	d.dept_no;
    
-- EXERCISE 2
select * from employees;
select * from departments;

select 
	e.*, d.*
from 
	employees e
cross join
	departments d
where
	e.emp_no < 1230
order by 
	e.emp_no, d.dept_name desc;
    

