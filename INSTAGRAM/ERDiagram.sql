-- TO CREATE THE ER DIAGRAM 
Table users{
  id serial [pk, increment]
  created_at timestamp
  updated_at timestamp
  username varchar(30)
  bio varchar(400)
  avatar varchar(200)
  phone varchar(25)
  email varchar(50)
  password varchar(50)
  status varchar(15)
}
Table posts{
  id serial [pk, increment]
  created_at timestamp
  updated_at timestamp
  url varchar(200)
  user_id integer [ref:>users.id]
  caption varchar(240)
  lat real
  lng real 
}
Table comments{
  id serial [pk, increment]
  created_at timestamp
  updated_at timestamp
  contents varchar(240)
  user_id int [ref:>users.id]
  post_id int [ref:>posts.id]
}
Table likes{
  id serial [pk, increment]
  created_at timestamp
  user_id integer [ref:>users.id]
  comment_id integer [ref:>comments.id]
  post_id int [ref:>posts.id]
}
Table photo_tags{
  id serial [pk, increment]
  created_at timestamp
  updated_at timestamp
  post_id integer [ref:>posts.id]
  user_id integer [ref:>users.id]
  x int
  y int
}
Table caption_tags{
  id serial [pk, increment]
  created_at timestamp
  post_id integer [ref:>posts.id]
  user_id integer [ref:>users.id]
}
Table hashtags{
  id serial [pk, increment]
  created_at timestamp
  title varchar (20)
}
Table hashtags_posts{
  id serial [pk, increment]
  hashtag_id int [ref:>hashtags.id]
  post_id integer [ref:>posts.id]
}
Table followers{
  id serial [pk, increment]
  created_at timsestamp
  leader_id int [ref:>users.id]
  follower_id int [ref:>users.id]
}
