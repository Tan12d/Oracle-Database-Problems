-- p. Display the highest salary of the instructor of Comp. Sci. Department.

select max(salary) from faculty_info group by department having department = 'Comp. Sci.';
