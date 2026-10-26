-- SORTING RECORDS
select * from products order by price; -- to sort the products based on increasing price (default) ascending
select * from products order by price desc;--descending order
select * from products order by name;
select * from products order by price,weight;-- to take two col into account
--offset and limit
select * from users1 offset 40;-- skips the first 40 rows
select * from users1 limit 5;--limit upto first 5
select * from products order by price desc limit 5 offset 1; -- to get the most 5 expensive products
