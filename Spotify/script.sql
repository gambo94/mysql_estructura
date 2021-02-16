DROP DATABASE IF EXISTS spotify;
CREATE DATABASE spotify  CHARACTER SET utf8mb4;
USE spotify;

CREATE TABLE user (
    id_user INT UNSIGNED PRIMARY KEY,
    email VARCHAR(40) NOT NULL,
    pwd VARCHAR(40) NOT NULL,
    username VARCHAR(40) UNIQUE NOT NULL,
    account_type ENUM('Free', 'Premium') NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('M', 'F', 'other') NOT NULL,
    country VARCHAR(20) NOT NULL,
    zipcode VARCHAR(10) NOT NULL
);

CREATE TABLE subscription (
    id_sub INT UNSIGNED PRIMARY KEY,
    start_sub DATE NOT NULL,
    renewal_sub DATE NOT NULL,
    payment_method ENUM('Credit', 'Paypal') NOT NULL,
    credit_card INT UNSIGNED,
    expire_date VARCHAR(4),
    seg_code INT UNSIGNED,
    user_if_paypal VARCHAR(20),
    id_user INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE user_makes_payments (
    id_order INT UNSIGNED NOT NULL,
    id_sub INT UNSIGNED NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    payment_date DATE NOT NULL,
    price INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_order, id_sub, id_user),
    FOREIGN KEY (id_sub) REFERENCES subscription(id_sub),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE playlist (
    id_playlist INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    pl_title VARCHAR(30) NOT NULL,
    playlist_status ENUM('Active', 'Deleted') NOT NULL,
    songs_quantity INT
);

CREATE TABLE user_creates_playlist (
    id_playlist INT UNSIGNED NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    playlist_status VARCHAR(10) DEFAULT 'Active' NOT NULL,
    PRIMARY KEY (id_playlist, id_user),
    FOREIGN KEY (id_playlist) REFERENCES playlist(id_playlist),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE user_deletes_playlist(
    id_deletion INT UNSIGNED NOT NULL,
    id_playlist INT UNSIGNED NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    playlist_status VARCHAR(10) DEFAULT 'Deleted' NOT NULL,
    deletion_date TIMESTAMP NOT NULL,
    PRIMARY KEY (id_deletion, id_playlist, id_user),
    FOREIGN KEY (id_playlist) REFERENCES playlist(id_playlist),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE artist(
    id_artist INT UNSIGNED PRIMARY KEY NOT NULL,
    artist_name VARCHAR(40) NOT NULL,
    artist_picture BLOB,
    related_artist_id INT UNSIGNED,
    FOREIGN KEY (related_artist_id) REFERENCES artist(id_artist)
    ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE album(
    id_album INT UNSIGNED PRIMARY KEY,
    album_title VARCHAR(50) NOT NULL,
    publish_date TIMESTAMP NOT NULL,
    cover BLOB,
    id_artist INT UNSIGNED,
    FOREIGN KEY (id_artist) REFERENCES artist(id_artist)
);

CREATE TABLE song(
    id_song INT UNSIGNED PRIMARY KEY,
    track_title VARCHAR(50) NOT NULL,
    track_duration TIME NOT NULL,
    n_of_plays BIGINT NOT NULL,
    id_album INT UNSIGNED,
    FOREIGN KEY (id_album) REFERENCES album(id_album)
);

CREATE TABLE playlist_has_songs(
    id_addition INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_playlist INT UNSIGNED NOT NULL,
    id_song INT UNSIGNED NOT NULL,
    user_who_added INT UNSIGNED NOT NULL,
    addition_date TIMESTAMP NOT NULL,
    PRIMARY KEY (id_addition, id_playlist, id_song),
    FOREIGN KEY (id_playlist) REFERENCES playlist(id_playlist),
    FOREIGN KEY (id_song) REFERENCES song(id_song),
    FOREIGN KEY (user_who_added) REFERENCES user(id_user)
);

CREATE TABLE user_followed_artists(
    id_follow INT UNSIGNED NOT NULL,
    id_artist INT UNSIGNED NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_follow, id_artist),
    FOREIGN KEY (id_artist) REFERENCES artist(id_artist),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE user_favourite_albums(
    id_alb_favourite INT UNSIGNED NOT NULL,
    id_album INT UNSIGNED NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_alb_favourite, id_album),
    FOREIGN KEY (id_album) REFERENCES album(id_album),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE user_favourite_songs(
    id_song_favourite INT UNSIGNED NOT NULL,
    id_song INT UNSIGNED NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_song_favourite, id_song),
    FOREIGN KEY (id_song) REFERENCES song(id_song),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);