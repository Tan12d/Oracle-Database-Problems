SQL> select max(salary) from faculty_info group by department having department = 'Comp. Sci.';

MAX(SALARY)
105800
