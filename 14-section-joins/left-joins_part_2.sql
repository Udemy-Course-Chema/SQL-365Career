# LEFT JOIN PART TWO: CHANGE TABLES
use udemy_employees;

-- departments_duplicate d - dept_manager_dup m
select d.dept_no, m.emp_no, d.dept_name
from
	departments_duplicate d
left join
	dept_manager_dup m ON m.dept_no = d.dept_no
order by d.dept_no;

-- Dept_manager_dup m - departments_duplicate d
select m.dept_no, m.emp_no, d.dept_name
from
	dept_manager_dup m
left outer join
	departments_duplicate d ON m.dept_no = d.dept_no
where 
	dept_name is not null
order by d.dept_no;
    

/**
OLD SCHOOL: LEFT OUTER JOIN
select d.dept_no, m.emp_no, d.dept_name
from
	departments_duplicate d
left outer join
	dept_manager_dup m ON m.dept_no = d.dept_no
order by d.dept_no;
*/
