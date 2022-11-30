# INNER JOIN
use udemy_employees;
/**
-- TRADITIONAL
INNER JOIN === JOIN # With or Whithout INNER

SELECT 
	table_1.column_name, table_1.column_name, ... , table_2.column_name, ...
FROM 
	table_1
JOIN
	table_2 ON t1.column_name = t2.column_name;
-- USING ALIAS
SELECT 
	t1.column_name, t1.column_name, ... , t2.column_name, ...
FROM 
	table_1 t1
JOIN
	table_2 t2 ON t1.column_name = t2.column_name;
*/
# alter table departments_duplicate 
# change dept_emp dept_no char(4) null;

desc dept_manager_dup;
desc departments_duplicate;

select * from dept_manager_dup;
select * from departments_duplicate;

-- STARTED
select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
INNER JOIN departments_duplicate d ON m.dept_no = d.dept_no
order by m.dept_no;

-- Exercise
SELECT * FROM dept_manager_dup;
SELECT * FROM employees;
SELECT * FROM departments_duplicate;

SELECT m.emp_no, e.first_name, e.last_name, d.dept_name, e.hire_date
FROM employees e
INNER JOIN dept_manager_dup m ON m.emp_no = e.emp_no
INNER JOIN departments_duplicate d ON d.dept_no = m.dept_no;

select e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
from employees e JOIN dept_manager dm ON e.emp_no = dm.emp_no;

