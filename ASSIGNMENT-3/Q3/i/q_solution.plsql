SQL> select name, trunc(trunc(months_between(sysdate,date_of_join),0)/12,0) as year_experience,trunc(months_between(sysdate,date_of_join),0) as month_experience from faculty_info;

NAME,YEAR_EXPERIENCE,MONTH_EXPERIENCE
Srinivasan,45,544
Wu,24,289
Mozart,79,953
Einstein,66,799
El Said,34,415
Gold,22,270
Katz,123,1479
Califieri,89,1068
Singh,55,671
Crick,23,285
Brandt,41,498
Kim,101,1216
