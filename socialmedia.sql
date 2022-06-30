DROP DATABASE IF EXISTS social_media;
CREATE DATABASE social_media;
USE social_media;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
username varchar(30) not null primary key,
email varchar(50) not null,
password varchar(30) not null,
first_name varchar(30) not null,
last_name varchar(30) not null
);

CREATE TABLE posts (
post_number int not null auto_increment,
post_content text not null,
post_time timestamp default current_timestamp,
username varchar(30) not null,
primary key (post_number),
foreign key (username) references users(username)
);
CREATE TABLE comments (
comment_number int not null auto_increment,
comment_content text not null,
comment_time timestamp default current_timestamp,
username varchar(30) not null,
post_number int not null,
primary key (comment_number),
foreign key (post_number) references posts(post_number),
foreign key (username) references users(username)
);