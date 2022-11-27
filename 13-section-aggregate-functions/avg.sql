# AVERAGE FUNCTION
use udemy_employees;
-- Which is the average annual salary the
-- company's employee received?

select avg( salary)
from salaries;

-- Exercise: What is the average annual salary paid 
-- to employees who started after the 1st of January 1997?
select * from salaries;
select avg(salary) 
from salaries
where from_date > '1997-01-01';


