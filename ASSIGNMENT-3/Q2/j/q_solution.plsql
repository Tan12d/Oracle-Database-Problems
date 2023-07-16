SQL> select department, count(department) from faculty_info group by department order by count(department) desc;

DEPARTMENT,COUNT(DEPARTMENT)
Comp. Sci.,3
Finance,2
Physics,2
History,2
Biology,1
Elec. Eng.,1
Music,1
