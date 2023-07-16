-- o. Display the total budget for the building built by Watson.

select sum(budget) from Department group by builder having builder = 'Watson';
