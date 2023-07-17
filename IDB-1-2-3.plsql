-- Q1

create table Instructor (ID Numeric(5), Name Varchar(30), Dept_Name Varchar(20), Salary Numeric(6));

desc Instructor;

create table Course (Course_id Varchar(10), Title Varchar(30), Dept_name Varchar(20), Credits Numeric(2));

desc Course;

create table Prereq (Course_id Varchar(10), Prereq_id Varchar(10));

desc Prereq;

create table Department (Dept_name Varchar(20), Building Varchar(20), Budget Numeric(10));

desc Department;

create table Teaches (ID Numeric(5), Course_id Varchar(10), Sec_id Numeric(2), Semester Varchar(10), year Numeric(4));

desc Teaches;

-- Q2

insert into Instructor values(&id, '&name', '&dept_name', &salary);
select * from Instructor;

-- Q3

insert into Course values('&course_id', '&title', '&dept_name', &credits);
select * from Course;

-- Q4

insert into Prereq values('&course_id', '&prereq_id');

select * from Prereq;

-- Q5

insert into Department values('&dept_name', '&building', &budget);

select * from Department;

-- Q6

insert into Teaches values(&id, '&course_id', &sec_id, '&semester', &year);

select * from Teaches;


-- ASSIGNMENT_2

-- a) 

desc Instructor;

desc Course;

desc Prereq;

desc Department;

desc Teaches;

-- b)

select * from Instructor;

select * from Course;

select * from Prereq;

select * from Department;

select * from Teaches;

-- c)

select name, dept_name from Instructor;

-- d)

select name, salary from Instructor where dept_name = 'Comp. Sci.';

-- e)

select * from Instructor where dept_name = 'Physics' and salary < 90000;

-- f)

select name from Instructor where dept_name != 'Comp. Sci.';

-- g)

select distinct dept_name from Instructor;

-- h)

select course_id from Teaches where semester = 'Spring' and year = 2009;

-- i)

select title from Course where dept_name = 'Comp. Sci.' and credits != 3;

-- j)

select * from Course order by dept_name desc;

-- k)

alter table Instructor add date_of_join date; 

desc Instructor;

-- l)

update Instructor set date_of_join = '12-mar-1978' where id = 10101;

update Instructor set date_of_join = '&doj' where id = &id;

select * from Instructor;

-- m)

alter table Instructor rename column dept_name to department;

select * from Instructor;

alter table Course rename column dept_name to department;        

select * from Course;

alter table Department rename column dept_name to department;

select * from department;

-- n)

alter table Prereq rename to Prerequired;

select * from Prerequired;

-- o)

alter table &tname rename column course_id to Sub_code;

select * from Course;

select * from Prerequired;

select * from Teaches;

-- p)

alter table Instructor modify name varchar(50);

desc Instructor;

-- q)

alter table Instructor rename to Faculty_Info;

select * from Faculty_Info;

-- r)

alter table Course modify Sub_code varchar(8);

desc Course;

-- s)

create table Prereq as select * from Prerequired;

select * from Prereq; 

truncate table Prereq;

drop table Prereq;

select * from Prereq;

-- t)

alter table Department rename column building to builder;

select * from department;


-- ASSIGNMENT-3

-- Q1

-- a)

select Sub_code,title,credits,department from course where department in('Physics','Music','Finance','Biology');

-- b)

select * from Faculty_Info where name like 'K%' and salary >= 65000;

-- c)

select name,department,(salary + (1.05 * salary) + (0.20 * salary)) as Gross_salary,((salary + (1.05 * salary) + (0.20 * salary))-(0.3 * salary)) as Net_salary from Faculty_Info;

-- d)

select * from Faculty_Info where salary between 60000 and 80000;

-- e)

select * from Faculty_Info where name like '_r%';

-- f)

select name, salary from Faculty_Info where department ='Comp. Sci.' order by salary desc;

-- g)

update Faculty_Info set salary =((15/100) * salary)+ salary;
select * from Faculty_Info;

-- h)

update Faculty_Info set salary =(((3/100)* salary)+salary) where department ='Comp.Sci.' and salary < 70000;

-- i)

select id,name,department,salary,(salary * 12) as annual_salary from Faculty_Info;

-- j)

update course set title='Game Theory' where title='Game Design';

select * from course;

-- k)

delete from Faculty_Info where department = 'History';

select * from Faculty_Info;  

-- l)

delete from course where course_id like 'BIO%';

select * from course;


-- Q2)

-- a)

select avg(salary) as Avg_Salary from faculty_info where department = 'Physics';

-- b)

select department,avg(salary) from Faculty_Info group by department;

-- c)

select id, name, department, salary from faculty_info where salary = (select max(salary) from faculty_info);

-- d)

select count(department) from faculty_info where department = 'Comp. Sci.'; 

-- e)

select sum(credits) from Course where department = 'Comp. Sci.'; 

-- f)

select department, count(salary), sum(salary) from Faculty_Info group by department having department in ('Physics', 'Comp. Sci.');

-- g)

select sum(credits), department from Course group by department having department in ('Comp. Sci.','Biology');

-- h)

select builder, sum(budget) from Department group by builder;

-- i)

select department, count(department) from faculty_info group by department;

-- j)

select department, count(department) from faculty_info group by department order by count(department) desc;

-- k)

select semester, count(sub_code) from Teaches group by semester;

-- l)

select department, count(department) from faculty_info group by department having count(department) < 2;

-- m)

select department, count(department) from faculty_info group by department having count(department) >=2 and department != 'Finance' order by count(department) desc;

-- n)

select department, sum(salary) from faculty_info group by department having sum(salary) > 50000;

-- o)

select sum(budget) from Department group by builder having builder = 'Watson';

-- p)

select max(salary) from faculty_info group by department having department = 'Comp. Sci.';



-- Q3)

-- a)

select initcap('tanmoy') from dual;

-- b)

select substr('TanmoyDas',2,6) from dual;

-- c)

select length('Siksha O Anusandhan University') from dual;

-- d)

select initcap(name) from faculty_info;

-- e)

select department, substr(department,1,3) as Abbr from faculty_info;

-- f)

select name, extract(month from date_of_join) as Month from faculty_info;

-- g)

select to_char(date_of_join, 'dd/mm/yy') from faculty_info;


-- h)

select name, trunc(months_between(sysdate,date_of_join),0) as month_experience from faculty_info;

-- i)

select name, trunc(trunc(months_between(sysdate,date_of_join),0)/12,0) as year_experience,trunc(months_between(sysdate,date_of_join),0) as month_experience from faculty_info;

-- j)

select name,to_char(date_of_join,'fmDAY') as day from faculty_info;

-- k)

select sysdate+15 as FUTURE_DAY from dual;

-- l)

select trunc(94204.27348,2) from dual;

-- m)

select 5+power(8,9) from dual;

-- n)

select sqrt(6464312) from dual;

-- o)

select lower('HELLO ITER') AS lower_case from dual;




