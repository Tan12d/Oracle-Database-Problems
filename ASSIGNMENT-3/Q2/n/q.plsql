-- n. Display the Dept_name that has paid total salary more than 50000. 

select department, sum(salary) from faculty_info group by department having sum(salary) > 50000;
