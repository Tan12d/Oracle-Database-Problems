SQL> select department, sum(salary) from faculty_info group by department having sum(salary) > 50000;

DEPARTMENT,SUM(SALARY)
Comp. Sci.,266800
Finance,195500
Physics,209300
History,140300
Biology,82800
Elec. Eng.,92000
