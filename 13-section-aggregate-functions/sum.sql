# AGGREGATE FUNCTION: SUM()

-- WORK ONLY NUMERIC DATA

/**
Cannot SUM(*)
Goes well with only the COUNT() function. 
*/

select sum(salary) from salaries;

-- Exercise: What is the total amount of money spent on 
-- salaries for all contracts starting after the 1st of January 1997?
select * from salaries;
select sum(salary) from salaries
where from_date > '1997-01-01';