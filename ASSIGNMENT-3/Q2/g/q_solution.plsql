SQL> select sum(credits), department from Course group by department having department in ('Comp. Sci.','Biology');

SUM(CREDITS),DEPARTMENT
11,Biology
17,Comp. Sci.
