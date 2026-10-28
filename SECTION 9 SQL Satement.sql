--subquery
--List the name and price of all products that are more expensive than all products in the 'Toys' department
select name, price from products where price>(select max (price) from products where department ='Toys');
--shape of query
select * from orders; -- many rows and many col
select id from orders;-- many rows one col
select count(*) from orders; --one row and one col
-- subquery adding in the select statement usually need to return a single value
select name, price,(select max(price) from products)  from products where price  > 867;
select name, price,(select price from products where id=3)as id_3_price from products where price > 867;
select name, price_weight_ratio from(select name, price/weight as price_weight_ratio from products)as p where price_weight_ratio >5;
--FORM SUBQUERY THAT RETURNS A VALUE
--FIND THE AVERAGE NO OF ORDERS FOR ALL USer
select avg(order_count) from (select user1_id, count(*) as order_count from orders group by user1_id )as p;
-- INTO A JOIN CLAUSE
select user1_id from orders where product_id=3;
select first_name from users1 join (select user1_id from orders where product_id=3) as o on o.user1_id=users1.id;
--where clause
select id from orders where product_id in (select id from products where price/weight>50);
--SHOW the name of all products with a price greater than the average product price
select name ,price from products where price >(select avg(price) from products);
--SHOW THE NAME OF ALL THE PRODUCTS THAT ARE NOT IN THE SAME DEPARTMENT AS PRODUCTS WITH A PRICE LESS THAN 100
select name, department from products where department not in( select department from products where price<100);
--SHOW THE NAME, DEPARTMENT, AND PRICE OF PRODUCTS THAT ARE MORE EXPENSIVE THAN ALL PRODUCTS IN THE 'INDUSTRIAL' DEPARTMENT
-- ALL, ANY, SOME
select name, department, price from products where price >all (select price from products where department='Indusrtial');
--SHOW THE NAME, DEPARTMENT, AND PRICE OF PRODUCTS THAT ARE MORE EXPENSIVE THAN ATELAST ONE PRODUCTS IN THE 'INDUSTRIAL' DEPARTMENT
select name, department, price from products where price >=any (select price from products where department='Indusrtial');
--SHOW THE NAME, DEPT AND PRICE OF THE MOST EXPENSE PROD IN EACH DEPT
select name, department, price from products as p1  where p1.price = (select max(price) from products as p2 where p2.department = p1.department);
--WITHOUT USING JOIN OR GROUP BY, PRINT THE NO OF ORDERS FOR EACH PROD
select p1.name, (select count(*) from orders as o1 where o1.product_id=p1.id)as num_orders from products as p1;
--SELECT WITHOUT FORM
select(select max(price) from products)/(select avg(price) from products);-- for math around values or single values
