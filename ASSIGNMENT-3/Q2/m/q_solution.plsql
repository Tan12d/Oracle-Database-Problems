SQL> select department, count(department) from faculty_info group by department having count(department) >=2 and department != 'Finance' order by count(department) desc;

DEPARTMENT,COUNT(DEPARTMENT)
Comp. Sci.,3
History,2
Physics,2
