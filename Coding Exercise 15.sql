Group By Review
Lets get more familiar with the E-Commerce dataset.

Write a query to print the number of paid and unpaid orders.

The result should look something like this:

+-------+-------+
| paid  | count |
+-------+-------+
| true  | 4     |
+-------+-------+
| false | 2     |
+-------+-------+
Hints:

You should only need to use the orders table

Maybe the GROUP BY and COUNT keywords would be useful!

For reference, here is an example of the orders table:

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
--SQL QUERY 
select paid ,count(*) from orders group by paid;





