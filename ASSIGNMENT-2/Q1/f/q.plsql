-- f. Display the name of the instructors who do not belong to Comp. Sci. Department.

select name from Instructor where dept_name != 'Comp. Sci.';
