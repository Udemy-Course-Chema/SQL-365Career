# DELETE STATEMENT 

use udemy_employees;

commit ;

select * from employees where emp_no = 1;
select * from titles where emp_no = 1;

delete from employees where emp_no = 1;

select * from employees order by emp_no;

rollback;

-- exercise: Remove the department number 10 record from the “departments” table.
commit;
select * from departments;
delete from departments where dept_no = 'd010';
select * from departments order by dept_no desc;
rollback;
select * from departments order by dept_no desc;


