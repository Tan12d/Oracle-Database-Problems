SQL> alter table Instructor rename column dept_name to department;

Table altered.

SQL> select * from Instructor;

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


SQL> alter table Course rename column dept_name to department;

Table altered.

SQL> select * from Course;

COURSE_ID,TITLE,DEPARTMENT,CREDITS
BIO-101,Intro. to Biology,Biology,4
BIO-301,Genetics,Biology,4
BIO-399,Computational Biology,Biology,3
CS-101,Intro. to Computer Science,Comp. Sci.,4
CS-190,Game Design,Comp. Sci.,4
CS-315,Robotics,Comp. Sci.,3
CS-319,Image Processing,Comp. Sci.,3
CS-347,Database System Concepts,Comp. Sci.,3
EE-181,Intro. to Digital Systems,Elec. Eng.,3
FIN-201,Investment Banking,Finance,3
HIS-351,World History,History,3
MU-199,Music Video Production,Music,3
PHY-101,Physical Principles,Physics,4


SQL> alter table Department rename column dept_name to department;

Table altered.

SQL> select * from department;

DEPARTMENT,BUILDING,BUDGET
Biology,Watson,90000
Comp. Sci.,Taylor,100000
Elec. Eng.,Taylor,85000
Finance,Painter,120000
History,Painter,50000
Music,Packard,80000
Physics,Watson,70000
