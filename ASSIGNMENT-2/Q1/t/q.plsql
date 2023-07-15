-- t. Change the column name ‘Building’ of Department table by new column name ‘Builder’.

alter table Department rename column building to builder;

select * from department;
