SQL> select * from account where type = (select type from account where account_no='A0001') and branch_code = (select branch_code from account where account_no='A0001') and account_no != 'A0001';

ACCOUNT_NO,TYPE,BALANCE,BRANCH_CODE
A0009,SB,18750,B003
