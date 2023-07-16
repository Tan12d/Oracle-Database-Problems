-- a. Display the Course_ids, Titles and Credits of course that are offered in any of the departments namely: Physics, Music, Finance and Biology.

select Sub_code,title,credits,department from course where department in('Physics','Music','Finance','Biology');
