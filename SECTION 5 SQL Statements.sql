--AGGREGRATE FUNCTION- count(), sum(), max(), min(), avg()
select contents from comments group by user_id;
select max(id) from comments;
select avg(id) from comments;
select sum(id) from comments;
select sum(id), id from comments;
select user_id,max(id) from comments group by user_id;
select user_id,count(id) as num_comments_created from comments group by user_id;
select count(user_id) from photos;-- doesnt take null id into account
select count(*) from photos; -- take null user_id into account
select user_id, count(*) from comments group by user_id;
--FIND THE NO OF COMMENTS IN EACH PHOTO
select photo_id, count(*) from comments group by photo_id;
--JOIN : CODING EXERCISE : select name, count(*) from books join authors on authors.id=books.author_id group by authors.name;
--HAVING FUNCTION : Find the no of comments for each photo where photo_id is less thamn 3 and the photo has more than 2 comments
select photo_id, count(*) from comments where photo_id<3 group by photo_id having  count(*)>2;
--Find the users(user_ids) where the user has commented on the first 50 photos and the user added more than 20 comments on those photos
select user_id, count(*) from comments where photo_id<50 group by user_id having count(*)>20;
