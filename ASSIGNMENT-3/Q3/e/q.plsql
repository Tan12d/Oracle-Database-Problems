-- e. List the department name of each instructor as a three letter code.

select department, substr(department,1,3) as Abbr from faculty_info;
