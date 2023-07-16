-- g. Display the date of joining of each instructor in dd/mm/yy format.

select name, to_char(date_of_join, 'dd/mm/yy') from faculty_info;
