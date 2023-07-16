-- f. Display the names of the instructors of Comp. Sci. Department in the descending order of their salary.

select name, salary from Faculty_Info where department ='Comp. Sci.' order by salary desc;
