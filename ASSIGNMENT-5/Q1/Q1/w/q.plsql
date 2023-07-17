-- w. Increase all accounts with balance over 80000 by 6%, and all other accounts receive 5%. (Use case statement)

create table account9 as select * from account;

select * from account9;

select 
account_no, type, 
case 
when balance > 80000 then balance * 1.06
else balance * 1.05
end balance,
branch_code
from account9;
