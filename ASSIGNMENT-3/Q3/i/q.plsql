-- i. Display the experience of each instructor in term of years and months.

select name, trunc(trunc(months_between(sysdate,date_of_join),0)/12,0) as year_experience,trunc(months_between(sysdate,date_of_join),0) as month_experience from faculty_info;
