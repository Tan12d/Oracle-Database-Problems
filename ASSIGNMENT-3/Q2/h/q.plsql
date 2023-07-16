-- h. Display building wise total budget values.

select builder, sum(budget) from Department group by builder;
