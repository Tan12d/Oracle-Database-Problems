-- i. Display the annual salary of each instructor.

select id,name,department,salary,(salary * 12) as annual_salary from Faculty_Info;
