# SUBQUERIES NESTED
use udemy_employees;

/**
Assign employee number 110022 as 
a  manager to all employees from 
10001 to 10020, and employee
number 110039 as a manager to 
all employees from 10021 to 10040
*/

select 
	emp_no
from 
	dept_manager
where 
	emp_no = 110022;

# =================================================================================
    
select 
	e.emp_no as employee_ID,
    min(d.dept_no) as department_code,
    (
		select 
			emp_no
		from 
			dept_manager
		where 
			emp_no = 110022
    ) as manager_ID
from
	employees e
join
	dept_emp d
    on 
		e.emp_no = d.emp_no
where 
	e.emp_no <= 10020
group by 
	e.emp_no
order by 
	e.emp_no
;

# =================================================================================
select A.* from 
(select 
	e.emp_no as employee_ID,
    min(d.dept_no) as department_code,
    (
		select 
			emp_no
		from 
			dept_manager
		where 
			emp_no = 110022
    ) as manager_ID
from
	employees e
join
	dept_emp d
    on 
		e.emp_no = d.emp_no
where 
	e.emp_no <= 10020
group by 
	e.emp_no
order by 
	e.emp_no
) as A
UNION 
select B.* from 
(select 
	e.emp_no as employee_ID,
    min(d.dept_no) as department_code,
    (
		select 
			emp_no
		from 
			dept_manager
		where 
			emp_no = 110039
    ) as manager_ID
from
	employees e
join
	dept_emp d
    on 
		e.emp_no = d.emp_no
where 
	e.emp_no >= 10021
    and 
	e.emp_no <= 10040
group by 
	e.emp_no
order by 
	e.emp_no
) as B
	;
