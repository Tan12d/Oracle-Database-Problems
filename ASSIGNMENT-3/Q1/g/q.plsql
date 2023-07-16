-- g. Update all records of Instructor table with a salary hike of 15%.

update Faculty_Info set salary =((15/100) * salary)+ salary;

select * from Faculty_Info;
