# SUBQUERIES PART 2 With EXISTS
use udemy_employees;
/**
DESCRIPTION: EXISTS VS IN
exists is quicker in retrieving large amount of data

with IN is faster with SMALLER datasets.
*/


select 
	e.first_name, e.last_name
from
	employees e
where 
	exists(
		select *
        from
			dept_manager dm
		where 
			dm.emp_no = e.emp_no
	)
order by e.emp_no;

-- Exercise:
-- Select the entire information 
-- for all employees whose job title is “Assistant Engineer”. 

select * from employees;
select * from titles where title like 'Ass%';

select * 
from 
	employees e
where exists
	(
		select t.title 
        from titles t
        where title like 'Assis%'
        and e.emp_no = t.emp_no
    );
-- order by e.emp_no;


