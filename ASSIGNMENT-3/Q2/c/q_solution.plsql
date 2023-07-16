SQL> select id, name, department, salary from faculty_info where salary = (select max(salary) from faculty_info);

ID,NAME,DEPARTMENT,SALARY
22222,Einstein,Physics,109250
