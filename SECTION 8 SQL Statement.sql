--UNION ANS INTERSECTION
--FIND the 4 products with the highest price and the 4 products with the highest price/weight ratio
(select * from products order by price desc limit 4)union all-- takes the duplicate values
(select * from products order by price/weight desc limit 4);
--union , union all, intersect, intersect all, except, except all
(select * from products order by price desc limit 4)intersect all
(select * from products order by price/weight desc limit 4);
(select * from products order by price desc limit 4)except
(select * from products order by price/weight desc limit 4);
