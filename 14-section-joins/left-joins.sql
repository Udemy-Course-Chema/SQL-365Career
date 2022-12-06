# LEFT JOINS 
use udemy_employees;

/**
Before Start:
delete from dept_manager_dup
where emp_no = '110228';

delete from departments_duplicate
where dept_no = 'd009';

insert into dept_manager_dup
values ('110228','d003','1992-03-21','9999-01-01');

insert into departments_duplicate
values ('d009','Customer Service');
*/

select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
LEFT JOIN
	departments_duplicate d ON m.dept_no = d.dept_no
GROUP BY m.emp_no, m.dept_no, d.dept_name
ORDER BY m.dept_no;
