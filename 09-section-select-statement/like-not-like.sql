use udemy_employees;
# LIKE; NOT LIKE;

-- PATTERNS MATCHING 
SELECT * FROM employees
WHERE first_name LIKE ( 'Mar%' );

# ar% -> start with ar
# %ar -> end with ar
# %ar% -> between in ar

/** 
WITH UNDERSCORE ( _ ) -> helps you match a single character. 
Example:
'Mar_' -> output: Mary, Mark, Mart (SINGLE CHARACTER)
*/
SELECT * FROM employees
WHERE first_name LIKE ( 'Mar_' );

## NOT LIKE
SELECT * FROM employees
WHERE first_name NOT LIKE ( '%Mar%' );

-- EXERCISE
select * from employees
where first_name like ( 'Mark%' );

select * from employees
where hire_date like ( '2000%' );

select * from employees
where emp_no like ( '1000_')