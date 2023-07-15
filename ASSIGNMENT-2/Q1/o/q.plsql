-- o. Change Course_id column name to Sub_code.

alter table &tname rename column course_id to Sub_code;

select * from Course;

select * from Prerequired;

select * from Teaches;
