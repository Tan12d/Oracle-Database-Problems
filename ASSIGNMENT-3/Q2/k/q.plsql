-- k. Display the number of courses offered semester wise.

select semester, count(sub_code) from Teaches group by semester;
