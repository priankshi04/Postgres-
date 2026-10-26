Inner Join Review
Join together the users and orders tables.  Print the first_name and last_name of each user, then whether or not they have paid for their order.

Hints:

Remember that to join two tables, we use something like JOIN orders ON orders.user_id = users.id

A user might have more than one order, so they might show up twice!  That is OK - we want to see each of their orders.

Reminder on the structure of the orders table:

+----+---------+------------+-------+
| id | user_id | product_id | paid  |
+----+---------+------------+-------+
| 1  | 1       | 3          | true  |
+----+---------+------------+-------+
| 2  | 3       | 3          | false |
+----+---------+------------+-------+
| 3  | 5       | 5          | true  |
+----+---------+------------+-------+
| 4  | 1       | 4          | true  |
+----+---------+------------+-------+
| 5  | 4       | 2          | false |
+----+---------+------------+-------+
| 6  | 2       | 1          | true  |
+----+---------+------------+-------+
Reminder on the structure of the users table:

+----+------------+-----------+
| id | first_name | last_name |
+----+------------+-----------+
| 1  | Iva        | Lindgren  |
+----+------------+-----------+
| 2  | Ignatius   | Johns     |
+----+------------+-----------+
| 3  | Jannie     | Boehm     |
+----+------------+-----------+
| 4  | Neal       | Wehner    |
+----+------------+-----------+
| 5  | Mikayla    | Casper    |
+----+------------+-----------+
| 6  | Patience   | Stracke   |
+----+------------+-----------+
--SQL QUERY 
select u.first_name, u.last_name, o.paid from users as u join orders as o on o.user_id= u.id;
