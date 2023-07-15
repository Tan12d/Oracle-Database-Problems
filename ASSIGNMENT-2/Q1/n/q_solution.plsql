SQL> alter table Prereq rename to Prerequired;

Table altered.

SQL> select * from Prerequired;

COURSE_ID,PREREQ_ID
BIO-301,BIO-101
BIO-399,BIO-101
CS-190,CS-101
CS-319,CS-101
CS-347,CS-101
EE-181,PHY-101
