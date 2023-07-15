SQL> alter table Instructor add date_of_join date;

Table altered.

SQL> desc Instructor;

Name	Null?	Type
ID		NUMBER(5)
NAME		VARCHAR2(30)
DEPT_NAME		VARCHAR2(20)
SALARY		NUMBER(6)
DATE_OF_JOIN		DATE
