-- i. Display course titles that are taught in Comp. Sci. Department and do not have credit equals to 3.

select title from Course where dept_name = 'Comp. Sci.' and credits != 3;
