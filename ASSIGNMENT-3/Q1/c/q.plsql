-- c. Display name, department, gross salary and net salary of instructors with 105% DA, 20% HRA, 30% IT. (gross salary = salary + DA + HRA, net salary = gross salary – IT).

select name,department,(salary + (1.05 * salary) + (0.20 * salary)) as Gross_salary,((salary + (1.05 * salary) + (0.20 * salary))-(0.3 * salary)) as Net_salary from Faculty_Info;
