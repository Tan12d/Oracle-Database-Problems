SQL> alter table Instructor rename to Faculty_Info;

Table altered.

SQL> select * from Faculty_Info;

ID,NAME,DEPARTMENT,SALARY,DATE_OF_JOIN
10101,Srinivasan,Comp. Sci.,65000,12-MAR-78
12121,Wu,Finance,90000,13-JUN-99
15151,Mozart,Music,40000,13-FEB-44
22222,Einstein,Physics,95000,23-NOV-56
32343,El Said,History,60000,11-DEC-88
33456,Gold,Physics,87000,14-JAN-01
45565,Katz,Comp. Sci.,75000,01-APR-00
58583,Califieri,History,62000,02-JUL-34
76543,Singh,Finance,80000,03-AUG-67
76766,Crick,Biology,72000,19-SEP-99
83821,Brandt,Comp. Sci.,92000,13-JAN-82
98345,Kim,Elec. Eng.,80000,11-MAR-22
