-- l. Delete the course records of the courses having course_id starting with 'BIO'.

delete from course where course_id like 'BIO%';

select * from course;
