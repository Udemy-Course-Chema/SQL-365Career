# IF NULL
use udemy_employees;

-- IFNULL(expression_1, expression2)
-- Return the first of the two indicated values if the data value 
-- found in the table is not null, and returns the second value if there
-- is a null value. 
-- ONLY TWO PARAMETERS


alter table departments_duplicate 
add dept_manager varchar(140) null;


select * from departments_duplicate
order by dept_emp;

select dept_emp, IFNULL(dept_name, 'no name') as dept_name, IFNULL(dept_manager, 'Not manager') as dept_manager
from departments_duplicate;

select dept_emp, ifnull(dept_name, 'department not provided')
from departments_duplicate;



