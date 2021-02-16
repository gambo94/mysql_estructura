DROP DATABASE IF EXISTS youtube;
CREATE DATABASE youtube  CHARACTER SET utf8mb4;
USE youtube;

CREATE TABLE user (
    id_user VARCHAR(30) PRIMARY KEY,
    email VARCHAR(40) NOT NULL,
    pwd VARCHAR(40) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('M', 'F', 'other') NOT NULL,
    country VARCHAR(20) NOT NULL,
    zipcode VARCHAR(10) NOT NULL
);

CREATE TABLE channel (
    id_channel VARCHAR(10) NOT NULL,
    channel_name VARCHAR(40) NOT NULL UNIQUE,
    descr VARCHAR(50), 
    creation_date TIMESTAMP NOT NULL,
    CONSTRAINT user_channel FOREIGN KEY (id_channel) REFERENCES user(id_user)
);

CREATE TABLE subscription (
    id_sub INT UNSIGNED AUTO_INCREMENT NOT NULL,
    user_subscribed VARCHAR(10) NOT NULL,
    channel_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_sub, user_subscribed, channel_name),
    FOREIGN KEY (channel_name) REFERENCES channel(channel_name),
    FOREIGN KEY (user_subscribed) REFERENCES user(id_user)
);

CREATE TABLE video (
    id_video INT UNSIGNED PRIMARY KEY,
    title VARCHAR(20) NOT NULL,
    duration TIME NOT NULL,
    dimension VARCHAR(10),
    name_file VARCHAR(30),
    views BIGINT NOT NULL, 
    likes INT,
    dislikes INT,
    vid_status ENUM('Public', 'Private', 'Hidden') NOT NULL,
    upload_date TIMESTAMP NOT NULL,
    owner_video VARCHAR(10) NOT NULL,
    FOREIGN KEY (owner_video) REFERENCES user(id_user)
);

CREATE TABLE tag (
    id_tag INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(10) NOT NULL
);

CREATE TABLE video_has_tags(
    id_video_tag INT UNSIGNED AUTO_INCREMENT,
    id_video INT UNSIGNED NOT NULL,
    id_tag INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_video_tag, id_video, id_tag),
    FOREIGN KEY (id_tag) REFERENCES tag(id_tag),
    FOREIGN key (id_video) REFERENCES video(id_video)
);

CREATE TABLE like_disklike (
    id_reaction INT UNSIGNED NOT NULL,
    reaction ENUM('Like', 'Dislike') NOT NULL,
    reaction_date TIMESTAMP NOT NULL,
    id_video INT UNSIGNED NOT NULL,
    id_user VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_reaction, id_video, id_user),
    FOREIGN KEY (id_video) REFERENCES video(id_video),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE comment (
    id_comment INT UNSIGNED AUTO_INCREMENT NOT NULL,
    comment_content VARCHAR(100) NOT NULL,
    comment_date TIMESTAMP NOT NULL,
    id_video INT UNSIGNED NOT NULL, 
    id_user VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_comment, id_video, id_user),
    FOREIGN KEY (id_video) REFERENCES video(id_video),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE like_disklike_comment (
    id_ldc INT UNSIGNED AUTO_INCREMENT NOT NULL,
    id_comment INT UNSIGNED NOT NULL,
    id_user VARCHAR(10) NOT NULL,
    reaction_comment ENUM('Like', 'Dislike') NOT NULL,
    reacttion_comment_date TIMESTAMP NOT NULL,
    PRIMARY KEY (id_ldc, id_comment, id_user),
    FOREIGN KEY (id_comment) REFERENCES comment(id_comment),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE playlist (
    id_playlist INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    playlist_name VARCHAR(50) NOT NULL,
    playlist_date TIMESTAMP NOT NULL,
    playlist_status ENUM('Public', 'Private'),
    id_channel VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_channel) REFERENCES channel(id_channel)
);

CREATE TABLE playlist_has_videos (
    id_phv INT UNSIGNED AUTO_INCREMENT NOT NULL,
    id_playlist INT UNSIGNED NOT NULL,
    id_video INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_phv, id_playlist, id_video),
    FOREIGN KEY (id_playlist) REFERENCES playlist(id_playlist),
    FOREIGN KEY (id_video) REFERENCES video(id_video)
);