-- CREATE TABLE helo_users (
-- id SERIAL PRIMARY KEY,
-- username VARCHAR NOT NULL,
-- password VARCHAR NOT NULL,
-- profile_pic text
-- );

-- CREATE TABLE helo_posts (
-- id SERIAL PRIMARY KEY,
-- title VARCHAR(45) NOT NULL,
-- content TEXT,
-- img TEXT,
-- author_id INTEGER references helo_users(id),
-- date_created timestamp
-- );

-- INSERT INTO helo_users
-- (username, password, profile_pic)
-- VALUES
-- ( 'd.test', 'd.test1', 'doggy')
-- RETURNING *;

-- SELECT * FROM helo_users;

-- SELECT * FROM helo_users
-- WHERE username = 'd.test';

-- SELECT * FROM helo_posts;

-- INSERT INTO helo_users
-- (username, password, profile_pic)
-- VALUES
-- ( 'm.test', 'm.test1', 'cat')
-- RETURNING *;

-- INSERT INTO helo_users
-- (username, password, profile_pic)
-- VALUES
-- ('c.test', 'c.test1', 'shark'),
-- ('a.test', 'a.test1', 'bird')
-- RETURNING *;


-- INSERT INTO helo_posts
-- (title, content, img, author_id, date_created)
-- VALUES
-- ('traveling', 'places', 'beach', 1, '09/02/2021');
-- ('working', 'office', 'city', 2, '08/02/2021'),
-- ('studying', 'library', 'books', 3, '07/02/2021'),
-- ('dancing', 'disco', 'party', 4, '06/02/2021');

-- SELECT * FROM helo_posts;

-- select p.id as post_id, title, content, img, profile_pic, date_created, username as author_username from helo_posts p
-- join helo_users u on u.id = p.author_id
-- where lower(title) like 'dancing'
-- order by date_created desc;


-- select helo_posts.id as post_id, title, content, img, profile_pic, date_created, helo_posts.username as author_username from helo_posts p
-- where lower(title) like 'working'
-- order by date_created asc
-- join helo_users u on post_id = author_username;

-- select p.id as post_id, title, content, img, profile_pic, date_created, username as author_username from helo_posts p
-- order by date_created asc
-- join helo_users u on u.id = p.author_id
-- where lower(title) like 'traveling'
-- where author_id != 0;


-- select p.id as post_id, title, content, img, profile_pic, date_created, username as author_username from helo_posts p
-- where 
-- order by date_created desc;