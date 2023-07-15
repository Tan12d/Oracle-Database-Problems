SQL> create table Prereq as select * from Prerequired;

Table created.

SQL> select * from Prereq;

SUB_CODE,PREREQ_ID
BIO-301,BIO-101
BIO-399,BIO-101
CS-190,CS-101
CS-319,CS-101
CS-347,CS-101
EE-181,PHY-101


SQL> truncate table Prereq;

Table truncated.

SQL> drop table Prereq;

Table dropped.
