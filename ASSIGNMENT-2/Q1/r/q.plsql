-- r. Change the Column size of Course_id in Course table from 10 to 8.

alter table Course modify Sub_code varchar(8);

desc Course;
