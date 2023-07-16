SQL> select name,department,(salary + (1.05 * salary) + (0.20 * salary)) as Gross_salary,((salary + (1.05 * salary) + (0.20 * salary))-(0.3 * salary)) as Net_salary 
  from Faculty_Info;

NAME,DEPARTMENT,GROSS_SALARY,NET_SALARY
Srinivasan,Comp. Sci.,146250,126750
Wu,Finance,202500,175500
Mozart,Music,90000,78000
Einstein,Physics,213750,185250
El Said,History,135000,117000
Gold,Physics,195750,169650
Katz,Comp. Sci.,168750,146250
Califieri,History,139500,120900
Singh,Finance,180000,156000
Crick,Biology,162000,140400
Brandt,Comp. Sci.,207000,179400
Kim,Elec. Eng.,180000,156000
