# Comments + Nested Replies

## 1. What Our Subsystem Does?

It allows the users to create posts, comment on posts, and reply to existing comments. It supports multiple levels of nested replies, enabling structured discussions while maintaining relationships between users, posts, and comments.

## 2. Table-by-Table Explanation

- **Users:** Stores user information, including a unique user ID (Primary Key), username, and account creation timestamp.

- **Posts:** Stores posts created by users, including a unique post ID (Primary Key), user ID (Foreign Key), post content, and creation timestamp.

- **Comments:** Stores both top-level comments and nested replies. It contains a unique comment ID (Primary Key), comment content, user ID (Foreign Key), post ID (Foreign Key), `parent_comment_id` (Self-referencing Foreign Key), timestamps, and Boolean flags to track edited and deleted comments.

## 3. Relationships

- The `user_id` foreign key in the Posts table establishes a **one-to-many (1:M)** relationship between Users and Posts.

- The `user_id` foreign key in the Comments table establishes a **one-to-many (1:M)** relationship between Users and Comments.

- The `post_id` foreign key in the Comments table establishes a **one-to-many (1:M)** relationship between Posts and Comments.

- The `parent_comment_id` establishes a **self-referencing one-to-many (1:M)** relationship, allowing comments to have multiple replies and supporting multiple nesting levels.

- A composite foreign key `(parent_comment_id, post_id)` references `(id, post_id)` in the Comments table, ensuring that a reply belongs to the same post as its parent comment.

## 4. Design Choice

**Design Choice:** We opted for a self-referencing relationship within the Comments table to store both comments and nested replies instead of creating a separate Replies table as data duplicacy will occur

Storing comments and replies in a single table avoids unnecessary data duplication and simplifies database management. The `parent_comment_id` column allows each comment to reference its parent, supporting multiple levels of nesting without requiring additional tables.

## 5. Indexing

We have created separate indexes for  foreign keys or for frequently queried columns to improve data retrieval performance:

- `posts.user_id` – Retrieves posts created by a particular user.

- `comments.user_id` – Retrieves comments written by a particular user.

- `comments.parent_comment_id` – Retrieves replies belonging to a particular comment.

- `comments.(post_id, created_at)` – A composite index that helps retrieve comments belonging to a post in chronological order.
