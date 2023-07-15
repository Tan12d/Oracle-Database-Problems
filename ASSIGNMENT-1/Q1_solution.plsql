SQL> create table Instructor (ID Numeric(5), Name Varchar(30), Dept_Name Varchar(20), Salary Numeric(6));

Table created.

SQL> desc Instructor;
Name	Null?	Type
ID		NUMBER(5)
NAME		VARCHAR2(30)
DEPT_NAME		VARCHAR2(20)
SALARY		NUMBER(6)

SQL> create table Course (Course_id Varchar(10), Title Varchar(30), Dept_name Varchar(20), Credits Numeric(2));

Table created.

SQL> desc Course;
Name	Null?	Type
COURSE_ID		VARCHAR2(10)
TITLE		VARCHAR2(30)
DEPT_NAME		VARCHAR2(20)
CREDITS		NUMBER(2)

SQL> create table Prereq (Course_id Varchar(10), Prereq_id Varchar(10));

Table created.

SQL> desc Prereq;
Name	Null?	Type
COURSE_ID		VARCHAR2(10)
PREREQ_ID		VARCHAR2(10)

SQL> create table Department (Dept_name Varchar(20), Building Varchar(20), Budget Numeric(10));

Table created.

SQL> desc Department;
Name	Null?	Type
DEPT_NAME		VARCHAR2(20)
BUILDING		VARCHAR2(20)
BUDGET		NUMBER(10)

SQL> create table Teaches (ID Numeric(5), Course_id Varchar(10), Sec_id Numeric(2), Semester Varchar(10), year Numeric(4));

Table created.

SQL> desc Teaches;
Name	Null?	Type
ID		NUMBER(5)
COURSE_ID		VARCHAR2(10)
SEC_ID		NUMBER(2)
SEMESTER		VARCHAR2(10)
YEAR		NUMBER(4)
