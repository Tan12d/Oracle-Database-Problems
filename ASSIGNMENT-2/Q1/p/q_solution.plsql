SQL> alter table Instructor modify name varchar(50);

Table altered.

SQL> desc Instructor;
Name	Null?	Type
ID		NUMBER(5)
NAME		VARCHAR2(50)
DEPARTMENT		VARCHAR2(20)
SALARY		NUMBER(6)
DATE_OF_JOIN		DATE
