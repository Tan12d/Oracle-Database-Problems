-- s. Find out the account_no that has grater balance than some accounts of type FD. (Use >some clause)

select account_no from account where balance > some(select balance from account where type='FD') and type!='FD';
