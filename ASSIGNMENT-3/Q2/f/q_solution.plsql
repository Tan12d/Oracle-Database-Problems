SQL> select department, count(salary), sum(salary) from Faculty_Info group by department having department in ('Physics', 'Comp. Sci.');

DEPARTMENT,COUNT(SALARY),SUM(SALARY)
Comp. Sci.,3,266800
Physics,2,209300
