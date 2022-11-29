# COALESCE & IFNULL
use udemy_employees;

-- COALESCE(expression1_expression_2,..., expression_N)
-- allows you to insert N arguments in the parentheses
select dept_emp, coalesce(dept_manager, 'Not Manager')
from departments_duplicate;

select * from departments_duplicate;
select 
	dept_emp,
    dept_name, 
    coalesce(dept_manager, dept_name, 'N/A') as dept_manager
from departments_duplicate
order by dept_emp asc;


