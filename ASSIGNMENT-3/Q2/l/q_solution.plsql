SQL> select department, count(department) from faculty_info group by department having count(department) < 2;

DEPARTMENT,COUNT(DEPARTMENT)
Music,1
Biology,1
Elec. Eng.,1
