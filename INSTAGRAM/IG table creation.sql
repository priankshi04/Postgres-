-- users table
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	username VARCHAR(30) NOT NULL,
	bio VARCHAR(400),
	avatar VARCHAR(200),
	phone VARCHAR(25),
	email VARCHAR(40),
	password VARCHAR(50),
	status VARCHAR(15),
	CHECK(COALESCE(phone, email) IS NOT NULL)
);

--posts table
CREATE TABLE posts (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	url VARCHAR(200) NOT NULL,
	caption VARCHAR(240),
	lat REAL CHECK(lat IS NULL OR (lat >= -90 AND lat <= 90)), -- to where to point the tag in the coordinates
	lng REAL CHECK(lng IS NULL OR (lng >= -180 AND lng <= 180)),
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);
--comments table
CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	contents VARCHAR(240) NOT NULL,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE
);
-- Like table
CREATE TABLE likes (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,-- to delete all the activity if the user is deleted
	post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE,
	comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
	CHECK(
		COALESCE((post_id)::BOOLEAN::INTEGER, 0)
		+
		COALESCE((comment_id)::BOOLEAN::INTEGER, 0)
		= 1
	),-- either the user should have liked the post or should have liked the comment
	UNIQUE(user_id, post_id, comment_id)
);
--Photo tag
CREATE TABLE photo_tags (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	x INTEGER NOT NULL,
	y INTEGER NOT NULL,
	UNIQUE(user_id, post_id)
);
-- caption tag

CREATE TABLE caption_tags (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	UNIQUE(user_id, post_id)
);
--Hashtag table
CREATE TABLE hashtags (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	title VARCHAR(20) NOT NULL UNIQUE
);
--hashtag posts which post uses which hashtag
CREATE TABLE hashtags_posts (
	id SERIAL PRIMARY KEY,
	hashtag_id INTEGER NOT NULL REFERENCES hashtags(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	UNIQUE(hashtag_id, post_id)
);
-- followers table
CREATE TABLE followers (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	UNIQUE(leader_id, follower_id)
);