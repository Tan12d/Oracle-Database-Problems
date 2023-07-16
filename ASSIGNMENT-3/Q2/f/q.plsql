-- f. Display the number of instructors and total salary drawn by Physics and Comp. Sci. departments. 

select department, count(salary), sum(salary) from Faculty_Info group by department having department in ('Physics', 'Comp. Sci.');
