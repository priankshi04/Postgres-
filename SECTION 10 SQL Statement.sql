--DISTINCT - to get different values 
select distinct department from products;
select count(distinct department) from products;
select distinct department, name from products;-- cant do count for more than one distict col
