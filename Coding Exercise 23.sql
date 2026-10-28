From-less Selects
Using only subqueries, print the max price, min price, and average price of all phones.  Rename each column to max_price, min_price, avg_price

The result should look something like this:

+-----------+-----------+-----------+
| max_price | min_price | avg_price |
+-----------+-----------+-----------+
| ...       | ...       | ...       |
+-----------+-----------+-----------+
For reference, here is the phones table:

+-------------+--------------+-------+------------+
| name        | manufacturer | price | units_sold |
+-------------+--------------+-------+------------+
| N1280       | Nokia        | 199   | 1925       |
+-------------+--------------+-------+------------+
| Iphone 4    | Apple        | 399   | 9436       |
+-------------+--------------+-------+------------+
| Galaxy S    | Samsung      | 299   | 2359       |
+-------------+--------------+-------+------------+
| S5620 Monte | Samsung      | 250   | 2385       |
+-------------+--------------+-------+------------+
| N8          | Nokia        | 150   | 7543       |
+-------------+--------------+-------+------------+
| Droid       | Motorola     | 150   | 8395       |
+-------------+--------------+-------+------------+
| Wave S8500  | Samsung      | 175   | 9259       |
+-------------+--------------+-------+------------+
--SQL QUERY WUTHOUT USING FORM 
select (select max(price)  from phones) as max_price,(select min(price) from phones) as min_price,
(select avg(price) from phones) as avg_price;
