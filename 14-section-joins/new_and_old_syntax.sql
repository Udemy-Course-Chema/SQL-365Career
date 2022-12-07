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
