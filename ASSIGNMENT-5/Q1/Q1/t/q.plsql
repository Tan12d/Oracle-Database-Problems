-- t. Find out the account_no that has greater balance than all accounts of type FD. (Use >all clause)

select account_no from account where balance > all(select balance from account where type='FD');
