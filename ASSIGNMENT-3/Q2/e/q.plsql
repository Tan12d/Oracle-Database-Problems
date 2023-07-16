-- e. Display the total credits of all courses offered in Comp.Sci. Department.

select sum(credits) from Course where department = 'Comp.Sci.'; 
