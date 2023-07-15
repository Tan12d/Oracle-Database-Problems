-- l. Insert date values to existing rows.

update Instructor set date_of_join = '12-mar-1978' where id = 10101;

update Instructor set date_of_join = '&doj' where id = &id;

select * from Instructor;
