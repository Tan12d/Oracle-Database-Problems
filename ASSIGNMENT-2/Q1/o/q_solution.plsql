SQL> alter table &tname rename column course_id to Sub_code;

Enter value for tname: 
Course

old   1: alter table &tname rename column course_id to Sub_code

new   1: alter table Course rename column course_id to Sub_code

Table altered.

SQL> alter table &tname rename column course_id to Sub_code;

Enter value for tname: 
Prerequired

old   1: alter table &tname rename column course_id to Sub_code

new   1: alter table Prerequired rename column course_id to Sub_code

Table altered.

SQL> alter table &tname rename column course_id to Sub_code;

Enter value for tname: 
Teaches

old   1: alter table &tname rename column course_id to Sub_code

new   1: alter table Teaches rename column course_id to Sub_code

Table altered.

SQL> select * from Course;

SUB_CODE,TITLE,DEPARTMENT,CREDITS
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

SQL> select * from Prerequired;

SUB_CODE,PREREQ_ID
BIO-301,BIO-101
BIO-399,BIO-101
CS-190,CS-101
CS-319,CS-101
CS-347,CS-101
EE-181,PHY-101

SQL> select * from Teaches;

ID,SUB_CODE,SEC_ID,SEMESTER,YEAR
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
