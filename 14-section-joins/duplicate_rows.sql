# DUPLICATE ROWS 
use udemy_employees;
SET @@session.sql_mode='STRICT_TRANS_TABLES,NO_ZERO_DATE,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
/**
How to handle duplicate row while using Inner Join ?
R. Group By
*/


insert into dept_manager_dup
values ('110228','d003','1992-03-21','9999-01-01'); 

insert into departments_duplicate
values ('d009', 'Customer Service');

# Check 'dept_manager_dup' and 'departments_duplicate'
select * from dept_manager_dup order by dept_no;
select * from departments_duplicate order by dept_no;

# INNER JOIN
SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
JOIN
	departments_duplicate d ON m.dept_no = d.dept_no
GROUP BY m.emp_no, m.dept_no, d.dept_name
ORDER BY dept_no;

Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'udemy_employees.m.dept_no' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
