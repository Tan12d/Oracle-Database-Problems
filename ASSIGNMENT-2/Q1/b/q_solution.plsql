SQL> select * from Instructor;

ID,NAME,DEPT_NAME,SALARY
10101,Srinivasan,Comp. Sci.,65000
12121,Wu,Finance,90000
15151,Mozart,Music,40000
22222,Einstein,Physics,95000
32343,El Said,History,60000
33456,Gold,Physics,87000
45565,Katz,Comp. Sci.,75000
58583,Califieri,History,62000
76543,Singh,Finance,80000
76766,Crick,Biology,72000

SQL> select * from Course;

COURSE_ID,TITLE,DEPT_NAME,CREDITS
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

SQL> select * from Prereq;

COURSE_ID,PREREQ_ID
BIO-301,BIO-101
BIO-399,BIO-101
CS-190,CS-101
CS-319,CS-101
CS-347,CS-101
EE-181,PHY-101

SQL> select * from Department;

DEPT_NAME,BUILDING,BUDGET
Biology,Watson,90000
Comp. Sci.,Taylor,100000
Elec. Eng.,Taylor,85000
Finance,Painter,120000
History,Painter,50000
Music,Packard,80000
Physics,Watson,70000

SQL> select * from Teaches;

ID,COURSE_ID,SEC_ID,SEMESTER,YEAR
10101,CS-101,1,Fall,2009
10101,CS-315,1,Spring,2010
10101,CS-347,1,Fall,2009
12121,FIN-201,1,Spring,2010
15151,MU-199,1,Spring,2010
22222,PHY-101,1,Fall,2009
32343,HIS-351,1,Spring,2010
45565,CS-101,1,Spring,2010
45565,CS-319,1,Spring,2010
76766,BIO-101,1,Summer,2009
76766,BIO-301,1,Summer,2010
83821,CS-190,1,Spring,2009
83821,CS-190,2,Spring,2009
83821,CS-319,2,Spring,2010
98345,EE-181,1,Spring,2009
