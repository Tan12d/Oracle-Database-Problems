-- l. Find all branch codes where the total balance is greater than the average of the total balance at all departments. (use with clause)

with average as (
    select avg(balance) as average
    from account
    group by branch_code
)
select branch_code, sum(balance) as balance
from account
group by branch_code
having sum(balance) > all(select average from average);
