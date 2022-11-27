# UPDATE STATEMENT PART 2 

-- WHERE CLAUSE IS CRUCIAL!!
select * from departments_duplicate
order by dept_emp;


commit;

-- WITHOUT WHERE, ALL ROW WILL BE AND BEEN AFFECTED. 
update departments_duplicate
set 
	dept_emp = 'd011',
    dept_name = 'Quality Control';

-- LET'S BE BACK
ROLLBACK;

-- dept_no, dept_name
/**create table departments_duplicate(
	dept_emp char(4) not null,
    dept_name varchar(40) not null
);
insert into departments_duplicate( dept_emp, dept_name  )
select * from departments;
*/

-- EXERCISE : Change the “Business Analysis” department name to “Data Analysis”.

select * from departments;
update departments 
set 
	dept_name = 'Data Analysis'
where 
	dept_no = 'd010';