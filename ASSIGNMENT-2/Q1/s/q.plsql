-- s. Delete the content of the table Prereq along with its description.

create table Prereq as select * from Prerequired;

select * from Prereq; 

truncate table Prereq;

drop table Prereq;
