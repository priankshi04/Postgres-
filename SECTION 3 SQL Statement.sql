--Used to create id and addressing primary key 
create table users(id SERIAL primary key, username varchar(50));
insert into users (username) values ('monahan93'),('pferrer'),('si93onis'),('99stroman');
select * from users;
create table photos (id SERIAL primary key, url varchar(200), user_id int references users(id));
insert into photos (url,user_id) values ('https://one.jpg',4);
select * from photos;
--RUNNING QUERIES ON ASSOCIATED DATA
insert into photos(url, user_id) values('https://two.jpg',1),('https://25.jpg',1),('https://36.jpg',1),('https://754.jpg',2),('https://35.jpg',3),('https://256.jpg',4);
select * from photos;
--Find all the photos created by user with ID 4
select * from photos where user_id=4;
--List all photos with details about the associated user for each
select url, username from photos join users on users.id=photos.user_id;
--DELETE STATEMENT
delete from users where id=1;
drop table photos;-- to drop the table
--When you attempt to delete a user who has related todos in 
--the database, it will return an error because of the foreign key constraint. 
--This constraint prevents the deletion to ensure data integrity, 
--meaning that todos must always reference a valid user.






