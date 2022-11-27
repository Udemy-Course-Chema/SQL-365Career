# ROUND FUNCTION

select round(avg(salary))
from salaries;

select round( avg(salary), 2 )
from salaries;

-- Exercise: Round the average amount of money spent 
-- on salaries for all contracts that started after 
-- the 1st of January 1997 to a precision of cents.
select * from salaries;

select round( avg(salary),2 ) 
from salaries
where from_date > '1997-01-01';