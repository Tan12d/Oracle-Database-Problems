-- h. Display the experience of each instructor in terms of months.

select trunc(months_between(sysdate,date_of_join),0) as month_experience from faculty_info;
