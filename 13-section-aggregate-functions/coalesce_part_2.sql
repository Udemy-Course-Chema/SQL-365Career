# PART 2: COALESCE
use udemy_employees;

-- CAN BE ONE PARAMETERS, CALLED SUPPLEMENTARY COLUMN
-- IFNULL doesn't work cause need 2 parameters.
select dept_emp, dept_name, coalesce('Que show') as fake_cool
from departments_duplicate;

-- Exercise: Select the department number and name from the ‘departments_dup’ 
-- table and add a third column where you name the department number (‘dept_no’) 
-- as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.
select * from departments_duplicate;
select dept_emp, dept_name, coalesce(dept_emp, dept_name) as dept_info
from departments_duplicate
order by dept_emp;

-- Exercise 2: Modify the code obtained from the previous exercise 
-- in the following way. Apply the IFNULL() function to the values 
-- from the first and second column, so that ‘N/A’ is displayed 
-- whenever a department number has no value, and ‘Department name not provided’ 
-- is shown if there is no value for ‘dept_name’.

select * from departments_duplicate;
select 
	ifnull(dept_emp, 'N/A') as dept_emp,
    ifnull(dept_name, 'Department Name not provided') as dept_name,
    ifnull(dept_manager, 'NONE') as dept_manager,
    coalesce(dept_emp, dept_name) as dept_info
from departments_duplicate;

