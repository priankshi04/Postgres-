--GREATEST IN BUILT FUNCTION
select greatest(20,10,30);
--Compute the cost to ship each item - shipping is the max of (weight*$2) or $30
select name, weight, greatest(30,2*weight) from products;-- here the weight is compared with each row with 30 , if less replace
--LEAST IN BUILT FUNCTION
select least(20,30,10);
-- all products on sale - price the least of product price *0.5 or $400
select name, price, least(price*0.5,400) from products;
--CASE KEYWORD
--PRINT each produt and its price. Also print a description of the price 
--If price>600 then 'high' if price>300 then 'medium' else print 'cheap'
select name, price, case 
	when price>600 then 'high' 
	when price>300 then 'medium'
	else 'cheap'
end
from products;
