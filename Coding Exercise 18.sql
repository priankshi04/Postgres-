Merging Results with Union
Write a query that will print the manufacturer of phones where the phone's price is less than 170.  Also print all manufacturer that have created more than two phones.

IMPORTANT: You don't need to wrap each query with parenthesis! Your solution should not have any parens in it.

Hint:

To find the manufacturers who have created more than two phones, you can group by manufacturer then apply a 'HAVING' filter to only consider groups with a COUNT(*) > 2

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
--sql query 
select manufacturer from phones where price<170 union
select manufacturer from phones group by manufacturer having count(*)>2
