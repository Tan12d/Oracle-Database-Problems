-- f. Display the month of the joining of each instructor.

select name, extract(month from date_of_join) as Month from faculty_info;
