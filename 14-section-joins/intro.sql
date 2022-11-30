# JOINS

/**
- Must find  a related column from the two tables that 
contains the same type of data.
- Will be free to add columns from these two tables to
our output. 
*/
alter table departments_duplicate
drop column dept_manager;

select * from departments_duplicate;

desc departments_duplicate;

alter table departments_duplicate
modify dept_emp char(4) null;

alter table departments_duplicate
modify dept_name varchar(40) null;


select * from departments_duplicate order by dept_emp;

insert into departments_duplicate(dept_name) 
values('Public Relations');

delete from departments_duplicate 
where dept_emp = 'd011';

insert into departments_duplicate(dept_emp)
values('d012');

select * from departments_duplicate;

-- ------------


create table dept_manager_dup(
	emp_no int(11) not null,
    dept_no char(4) not null,
    from_date date not null,
    to_date date null
);

insert into dept_manager_dup
select * from dept_manager;

alter table dept_manager_dup
modify dept_no char(4) null;


insert into dept_manager_dup(emp_no, from_date)
VALUES (999904, '2017-01-01'),
(999905, '2017-01-01'),
(999906, '2017-01-01'),
(999907, '2017-01-01');

delete from dept_manager_dup
where dept_no = 'd001';

select * from departments_duplicate;