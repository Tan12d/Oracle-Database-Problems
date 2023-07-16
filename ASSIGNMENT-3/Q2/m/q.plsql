-- m. List the number of instructors of each department having 2 or more than 2 instructors except Finance department, sorted in high to low order of their number.

select department, count(department) from faculty_info group by department having count(department) >=2 and department != 'Finance' order by count(department) desc;
