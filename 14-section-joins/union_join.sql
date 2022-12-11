# UNION JOIN
use udemy_employees;

create table employees_dup (
	emp_no int(11),
    birth_date date,
    first_name varchar(14),
    last_name varchar(16),
    gender enum('M','F'),
    hire_date date
);

-- duplicate the structure of the employees_dup table
insert into employees_dup
select e.* from employees e
limit 20;

select * from employees_dup;


-- insert a duplicate of the first row
insert into employees_dup 
values ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');


# UNION VS UNION ALL
-- The difference is with "union all" shows all the duplicates than the sole "union"
select 
	e.emp_no, 
	e.first_name, 
    e.last_name, 
    null as dept_no, 
    null as from_date
from
	employees_dup e
where 
	e.emp_no = 10001
union all select 
	null as emp_no,
    null as fist_name,
    null as last_name,
    m.dept_no, 
    m.from_date
from
	dept_manager m;

-- UNION
select 
	e.emp_no, 
	e.first_name, 
    e.last_name, 
    null as dept_no, 
    null as from_date
from
	employees_dup e
where 
	e.emp_no = 10001
union  select 
	null as emp_no,
    null as fist_name,
    null as last_name,
    m.dept_no, 
    m.from_date
from
	dept_manager m;

# ======================================================
-- Exercise
select * 
from 
	(select e.emp_no, 
    e.first_name, 
    e.last_name,
    null as dept_no, 
    null as from_date
	from
		employees e
	where 
		last_name = 'Denis'
	union 
		select 
			null as emp_no, 
            null as fist_name, 
            null as last_name,
            dm.dept_no, 
            dm.from_date
		from
			dept_manager dm) 
as a
order by
	-a.emp_no desc;



