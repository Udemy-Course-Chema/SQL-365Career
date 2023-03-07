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

# =================================================================================
# EXERCISE
# =================================================================================

drop table if exists emp_manager;

create table emp_manager(
	emp_no int not null,
    dept_no char(4) null, 
    manager_no int not null
);
/**
Fill emp_manager with data about employees, 
the number of the department they are working in, 
and their managers.
*/
select * from employees;
select * from dept_emp;
select * from dept_manager;

insert into emp_manager 
select 
	u.*
from 
	(
		select 
			e.emp_no as employee_ID,
			min(de.dept_no) as department_code,
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
			dept_emp de 
				on 
					e.emp_no = de.emp_no
		where 
			e.emp_no <= 10020
		group by e.emp_no
		order by e.emp_no
	) as a
union 
-- Line 24
	select 
		b.*
    from 
    (
		select 
			e.emp_no as employee_ID,
            min(de.dept_no) as department_code,
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
			dept_emp de 
            on 
				e.emp_no = de.emp_no
		where 
			e.emp_no = 110022
		group by e.emp_no
    ) as c
	












