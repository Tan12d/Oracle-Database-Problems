-- j. Display the day of joining of each instructor.

select name, to_char(date_of_join,'fmDAY') as day from faculty_info;
