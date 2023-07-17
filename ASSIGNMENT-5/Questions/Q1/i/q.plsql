-- i. Insert the account no and type from ACCOUNT table into the ACCOUNT_TYPE table whose balance is less than 50000.

insert into account_type select account_no, type from account where balance<50000;

select * from account_type;
