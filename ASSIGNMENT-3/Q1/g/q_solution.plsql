SQL> update Faculty_Info set salary =((15/100) * salary)+ salary;

12 rows updated.

Commit complete.

SQL> select * from Faculty_Info;

ID,NAME,DEPARTMENT,SALARY,DATE_OF_JOIN
10101,Srinivasan,Comp. Sci.,74750,12-MAR-78
12121,Wu,Finance,103500,13-JUN-99
15151,Mozart,Music,46000,13-FEB-44
22222,Einstein,Physics,109250,23-NOV-56
32343,El Said,History,69000,11-DEC-88
33456,Gold,Physics,100050,14-JAN-01
45565,Katz,Comp. Sci.,86250,01-APR-00
58583,Califieri,History,71300,02-JUL-34
76543,Singh,Finance,92000,03-AUG-67
76766,Crick,Biology,82800,19-SEP-99
83821,Brandt,Comp. Sci.,105800,13-JAN-82
98345,Kim,Elec. Eng.,92000,11-MAR-22
