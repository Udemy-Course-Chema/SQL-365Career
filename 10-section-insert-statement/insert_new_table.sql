# Inserting Data INTO  a New Table
use udemy_employees;

select * from departments;

create table departments_duplicate(
	dept_no char(4) not null,
    dept_name varchar(40) not null
);

select * from departments_duplicate;

insert into departments_duplicate( dept_no, dept_name )
select * from departments;

select * from departments_duplicate;

-- Exercise: Create a new department called “Business Analysis”.
-- Register it under number ‘d010’.
insert into departments( dept_no, dept_name ) 
values ('d010','Business Analysis');
select * from departments;