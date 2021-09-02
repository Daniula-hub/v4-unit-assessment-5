CREATE TABLE helo_users (
id SERIAL PRIMARY KEY,
username VARCHAR(100),
password VARCHAR(100),
profile_pic text
);

CREATE TABLE helo_posts (
id SERIAL PRIMARY KEY,
title VARCHAR(45) NOT NULL,
content TEXT,
img TEXT,
author_id INTEGER references helo_users(id),
date_created timestamp
);