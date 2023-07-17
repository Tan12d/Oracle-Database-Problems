SQL> select * from (select branch_code,avg(balance) as avg from account group by branch_code) where avg>60000;

BRANCH_CODE,AVG
B003,109375
B004,328000
B005,289250
