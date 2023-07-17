-- o. Find out the details of the account having same type and branch_code as the account_no A0001.

select * from account where type = (select type from account where account_no='A0001') and branch_code = (select branch_code from account where account_no='A0001') and account_no != 'A0001';
