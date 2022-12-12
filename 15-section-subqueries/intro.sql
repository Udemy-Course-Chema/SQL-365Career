# SUBQUERIES
/**
subqueries with IN nested inside WHERE

queries embedded in a query
Also know "Inner Queries" & "Nested QUeries", "Outer Query". 

May return a single value (a scalar), a single row, a single column, or an entire table.
*/

select * from dept_manager;

-- Sentence: Select the first and last name from the employees table 
-- for the same employee numbers that can be found in the "departments 
-- manager" table.
select 
	e.first_name, 
    e.last_name
from
	employees e
where 
	e.emp_no 
		in
			(
				select dm.emp_no
                from dept_manager dm
            );

select dm.emp_no from dept_manager dm;

-- exercise: Extract the information 
-- about all department managers who 
-- were hired between the 1st of January 1990 
-- and the 1st of January 1995.
select * from dept_manager;
select * from employees;

select 
	e.first_name, 
    e.last_name, 
    e.hire_date
from 
	employees e
where 
	e.hire_date
    in 
		(
			select 
				from_date
			from 
				dept_manager
			where 
				from_date 
                between 
					'1990-01-01' and '1995-01-01'
		);

select *
from dept_manager
where 
	emp_no
    in 
		(select 
			emp_no
		from 
			employees
		where 
			hire_date between '1990-01-01' and '1995-01-01'
        
        );
		

SELECT *
FROM employees e
WHERE
	e.hire_date BETWEEN '1990-01-01' AND '1995-01-01'
AND
e.emp_no
IN 
	(
		SELECT dm.emp_no FROM dept_manager dm
     );

