-- b. Display records of the instructors whose name starts with “K” and who get salary more than 65000.

select * from Faculty_Info where name like 'K%' and salary >= 65000;
