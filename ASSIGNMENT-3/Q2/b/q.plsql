-- b. Display the Dept_name and Average salary paid to instructor of each department.

select department,avg(salary) from Faculty_Info group by department;
