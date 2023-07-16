-- i. Display the number of instructors of each department.

select department, count(department) from faculty_info group by department;
