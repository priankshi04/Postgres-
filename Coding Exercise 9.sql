Practice Joining Data
You are designing a database for a book publishing company.  The database needs to store a table of authors and books. An author has many books.  This means that books should have a foreign key column that references an author.

Write a query that will join together these two tables.  For each book, print the title of the book and the name of the author.

Table definitions of authors

+----+-----------------+
| id | name            |
+----+-----------------+
| 1  | JK Rowling      |
+----+-----------------+
| 2  | Stephen King    |
+----+-----------------+
| 3  | Agatha Christie |
+----+-----------------+
| 4  | Dr Seuss        |
+----+-----------------+
Table definition of books

+----+--------------------+-----------+
| id | title              | author_id |
+----+--------------------+-----------+
| 1  | It                 | 2         |
+----+--------------------+-----------+
| 2  | Chamber of Secrets | 1         |
+----+--------------------+-----------+
| 3  | Cat and the Hat    | 4         |
+----+--------------------+-----------+
| 4  | Affair at Styles   | 3         |
+----+--------------------+-----------+
--SQL QUERY
select title, name from books join authors where authors.id= books.author_id; 
