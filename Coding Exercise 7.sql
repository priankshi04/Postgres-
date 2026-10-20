Practice Deleting Records
We are once again working with the phones table.

You are going to write two separate queries

The first query should delete all phones that were created by Samsung

The second query should select all rows and columns of the phones table

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
-- Write your delete SQL here
delete from phones where manufacturer='Samsung';

-- Write query here to select all rows and columns from phones
select * from phones;
