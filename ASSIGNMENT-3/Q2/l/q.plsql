-- l. Display the name of departments having number of instructors less than 2.

select department, count(department) from faculty_info group by department having count(department) < 2;
