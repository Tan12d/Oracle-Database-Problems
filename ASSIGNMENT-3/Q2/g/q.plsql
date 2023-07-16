-- g. Display the total credits of Comp.Sci. and Biology departments from course table.

select sum(credits), department from Course group by department having department in ('Comp. Sci.','Biology');
