# AGGREGATE FUNCTIONS

-- DEFINITION:
-- They gather data from many rows of a table, then 
-- aggregate it into a single value.
-- Aggregate functions typically ignore NULL values throughout the 
-- field to which they are applied.

select * from salaries
order by salary desc;



/**
COUNT:
Applicable to both numeric and non-numeric data.

COUNT(DISTINCT)
Helps us find the number of time unique values are encountered in a given
column.
*/
select count(salary) from salaries;

-- How many employee start dates are in the database;
select count(distinct from_date) from salaries;

select count(*) from salaries; # Return values, null included. 

-- Exercise: How many departments are there in the “employees” database? 
select count(distinct dept_no) from dept_emp;





