SQL> select sum(budget) from Department group by builder having builder = 'Watson';

SUM(BUDGET)
160000
