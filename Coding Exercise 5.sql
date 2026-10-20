Trying Calculations in Where Clauses
We are once again working with the phones table.

Write a query that will print the name and total_revenue of all phones with a total_revenue greater than 1,000,000

Hints

Remember that total_revenue can be found by multiplying price and units_sold columns! 


Dont forget to rename the column produced by price X units_sold to total_revenue using the AS operator

Only the calculation in the SELECT clause needs to be renamed, not the one in the WHERE clause.

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
--SQL QUERY 
select name, price*units_sold as total_revenue from phones where price*units_sold > 1000000;
