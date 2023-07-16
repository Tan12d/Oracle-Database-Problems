-- d. Display the number of instructors available in Comp. Sci. Department.

select count(department) from faculty_info where department = 'Comp. Sci.'; 
