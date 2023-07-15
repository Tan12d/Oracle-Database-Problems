-- Q1 

-- a)  
create table Instructor(ID Numeric(5), Name Varchar(30), Dept_Name Varchar(20), Salary Numeric(6));
desc Instructor;

--b)
create table Course (Course_id Varchar(10), Title Varchar(30), Dept_name Varchar(20), Credits Numeric(2));
desc Course;

-- c)
create table Prereq (Course_id Varchar(10), Prereq_id Varchar(10));
desc Prereq;

-- d)
create table Department (Dept_name Varchar(20), Building Varchar(20), Budget Numeric(10));
desc Department;

--e)
create table Teaches (ID Numeric(5), Course_id Varchar(10), Sec_id Numeric(2), Semester Varchar(10), year Numeric(4));
desc Teaches;

