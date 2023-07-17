SQL> WITH max_balance AS (SELECT MAX(balance) AS max_balance FROM account) SELECT account_no, balance FROM account WHERE balance = (SELECT max_balance FROM max_balance);

ACCOUNT_NO,BALANCE
A0003,850000
