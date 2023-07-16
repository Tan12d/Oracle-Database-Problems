-- a. Display the Avg. salary of instructors of Physics department.

select avg(salary) as Avg_Salary from faculty_info where department = 'Physics';
