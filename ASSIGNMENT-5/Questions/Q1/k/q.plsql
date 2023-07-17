-- k. Delete from ACCOUNT_TYPE table the details of account whose balance is less than 20000.

delete from account_type where account_no in (select account_no from account where balance < 20000);

SELECT * from account_type;
