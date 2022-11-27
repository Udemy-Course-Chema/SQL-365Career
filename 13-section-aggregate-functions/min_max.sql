# MIN & MAX 
use udemy_employees;


-- Which is the highest salary we offer? 
select * from salaries;
select max(salary) from salaries;

-- Which is the lowest salary we offer? 
select min(salary) from salaries;

-- Exercise: 1. Which is the lowest employee number in the database?
select min(emp_no) from employees;

-- Exercise: 2. Which is the highest employee number in the database?
select max(emp_no) from employees;