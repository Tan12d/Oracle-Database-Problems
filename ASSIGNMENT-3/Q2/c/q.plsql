-- c. Display the ID, Name & Department of the instructor drawing the highest salary.

select id, name, department, salary from faculty_info where salary = (select max(salary) from faculty_info);
