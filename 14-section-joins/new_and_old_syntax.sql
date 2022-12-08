# NEW AND OLD SYNTAX
use udemy_employees;


/**
ADVANCED SQL Tools
*/
select 
	m.dept_no, m.emp_no, d.dept_name
from 
	dept_manager_dup m
join 
	departments_duplicate d on m.dept_no = d.dept_no
order by m.dept_no;


-- OLD INNER JOIN SYNTAX
select 
	m.dept_no, m.emp_no, d.dept_name
from 
	dept_manager_dup m,
    departments_duplicate d
where 
	m.dept_no = d.dept_no;


-- Exercise

select * from dept_manager;
select * from employees;

-- OLD SYNTAX
select 
	e.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
from 
	employees e, 
    dept_manager m
where 
	e.emp_no = m.emp_no;
    
-- NEW STYNTAX
select 
	e.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
from 
	employees e
join
	dept_manager m
on
	e.emp_no = m.emp_no;
    
    

    

	