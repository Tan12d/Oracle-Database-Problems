-- m. Change the name of dept_name to department in all the tables.

alter table Instructor rename column dept_name to department;

select * from Instructor;

alter table Course rename column dept_name to department;        

select * from Course;

alter table Department rename column dept_name to department;

select * from department;
