# TCL - TRANSITION CONTROL LANGUAGE

### COMMIT STATEMENT
-- saves the transaction in the database
-- changes cannot be undone
-- **used to save the state of the data in the database at the moment of its execution.** 

### ROLLBACK CLAUSE
-- allows you to take a step back
-- the last change(s) made will not count
-- reverts to the last non-committed state 
-- ** It will refer to the state corresponding to the last time you executed COMMIT.  **


# UPDATE STATEMENT

-- Used to update the values of existing records in a table. 
USE udemy_employees;

SELECT * FROM employees
WHERE emp_no = 1;

UPDATE employees
SET 
	first_name = 'Mokuba',
    last_name = 'Kaiba',
    birth_date = '2000-01-01',
    gender = 'M'
WHERE emp_no = 1;

