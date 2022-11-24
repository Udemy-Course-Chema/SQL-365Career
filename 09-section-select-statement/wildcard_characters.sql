# WILDCARD CHARACTER
use udemy_employees;
/**

Percentage (%) -> a substitute for a sequence of characters.

Underscore (_) -> helps you match a single character.

Asterisk ( * ) -> will deliver a list of ALL columns in a table.  
*/

-- EXERCISE
select * from employees
where first_name like ('%JACK%');

SELECT * FROM employees
where first_name not like ( '%JACK%' );