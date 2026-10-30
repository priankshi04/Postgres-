--COMMENTS + NESTED(REPLIES)
--Users Table
create table users(
id serial primary key,
created_at timestamp with time zone default current_timestamp,
username varchar(30) not null unique
);

-- Posts Table
create table posts(
id serial primary key,
created_at timestamp with time zone default current_timestamp,
user_id int not null references users(id) on delete cascade,
contents varchar(1000) not null
);
-- Comments Table
create table comments(
id serial primary key,
created_at timestamp with time zone default current_timestamp,
updated_at timestamp with time zone default current_timestamp,
contents varchar(1000) not null,
user_id int not null references users(id) on delete cascade,
post_id int not null references users(id) on delete cascade,
parent_comment_id int,
is_edited boolean not null default false,
is_deleted boolean not null default false,
unique(id,post_id),
foreign key (parent_comment_id, post_id) references comments(id, post_id) on delete cascade, -- self referencing relationship
check(parent_comment_id is not null or parent_comment_id<>id)
);

--INDEXES FOR FOREIGN KEY -- helps to fetch info quickly but takes up space , slows insert, update and delete as need to edit index table also
create index idx_posts_user_id on posts(user_id);--find post created by the user 
create index idx_comments_user_id on comments(user_id);--find comment written by the user
create index idx_comments_post_id on comments(post_id);--find comment belonging to a post 
create index idx_comments_parent_comment_id on comments(parent_comment_id); -- find parent comment to a post 
create index idx_comments_post_created_at on comments(post_id, created_at);-- find comments and replies in choronological order