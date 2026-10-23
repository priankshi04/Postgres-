Joins, Joins, Join!
You are still authoring a database for a book publisher.  The database has a table of authors and a table of books .

Write a query that will return the title of each book, along with the name of the author.  All authors should be included, even if they do not have a book associated with them.

Table of authors

+----+-----------------+
| id | name            |
+----+-----------------+
| 1  | Stephen King    |
+----+-----------------+
| 2  | Agatha Christie |
+----+-----------------+
| 3  | JK Rowling      |
+----+-----------------+
Table of books

+----+---------------------+-----------+
| id | title               | author_id |
+----+---------------------+-----------+
| 1  | The Dark Tower      | 1         |
+----+---------------------+-----------+
| 2  | Affair At Styles    | 2         |
+----+---------------------+-----------+
| 3  | Murder at the Links | 2         |
+----+---------------------+-----------+
--sql joins statement
SELECT books.title, authors.name FROM authors LEFT JOIN books ON authors.id = books.author_id;
