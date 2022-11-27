# INSERT STATEMENT 
use udemy_employees;
select * from employees;

insert into employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
values(1230, '1993-01-01', 'Seto', 'Kaiba', 'M', '2010-01-01');

select * from employees
order by emp_no ;

-- EXERCISE
select * from titles;
insert into titles(emp_no, title, from_date)
values( 1, 'Senior Data Science', '2022-08-01' );

-- Exercise 2
select * from dept_emp;
insert into dept_emp(emp_no, dept_no, from_date, to_date)
values( 1, 'd001', '2022-12-18', '9999-01-01' );
select * from dept_emp 
order by emp_no;
