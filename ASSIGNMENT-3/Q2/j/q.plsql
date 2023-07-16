-- j. Display the number of instructors of each department sorted in high to low.

select department, count(department) from faculty_info group by department order by count(department) desc;
