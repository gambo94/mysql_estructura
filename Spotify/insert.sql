
/* users */

INSERT INTO user VALUES (001, 'userguay@guay.es', '123guay', 'guay85', 'Free', '1985-05-02', 'other', 'Spain', '08394');
INSERT INTO user VALUES (002, 'holah@holla.es', '123hola', 'hola94', 'Free', '1994-06-01', 'F', 'Italy', '61032');
INSERT INTO user VALUES (003, 'maida@maida.es', '123maida', 'maida92', 'Premium', '1992-07-04', 'M', 'Andorra', '39293');
INSERT INTO user VALUES (004, 'fake@fake.es', '123fake', 'fake83', 'Free', '1983-08-14', 'other', 'UK', '3849');
INSERT INTO user VALUES (005, 'notfake@nf.ul', '123not', 'not98', 'Premium', '1998-01-01', 'M', 'US', '2930');

/* subscription */

INSERT INTO subscription VALUES (100, '2020-09-24', '2021-05-12', 'Credit', 456214562, '4/23', 234, NULL, 003);
INSERT INTO subscription VALUES (101, '2020-12-01', '2021-12-01', 'Paypal', NULL, NULL, NULL, 'notfakepaypal', 005);

/* user_makes_payments */

INSERT INTO user_makes_payments VALUES (1, 100, 003, '2020-09-24', 30);
INSERT INTO user_makes_payments VALUES (2, 101, 005, '2020-12-01', 30);

/* playlist */ 

INSERT INTO playlist VALUES (201, 'best of 1980', 'Active', 2);
INSERT INTO playlist VALUES (202, 'best of 2000', 'Active', 1);
INSERT INTO playlist VALUES (203, 'happy songs', 'Active', 1);
INSERT INTO playlist VALUES (204, 'sad songs', 'Deleted', 0);

/* user_creates_playlist */ 

INSERT INTO user_creates_playlist (id_playlist, id_user, creation_date) VALUES  (201, 001, CURRENT_TIMESTAMP());
INSERT INTO user_creates_playlist (id_playlist, id_user, creation_date) VALUES (202, 003, CURRENT_TIMESTAMP());
INSERT INTO user_creates_playlist (id_playlist, id_user, creation_date) VALUES (203, 005, CURRENT_TIMESTAMP());
INSERT INTO user_creates_playlist (id_playlist, id_user, creation_date) VALUES (204, 001, CURRENT_TIMESTAMP());

/* user_deletes_playlist */

INSERT INTO user_deletes_playlist (id_deletion, id_playlist, id_user, deletion_date) VALUES (01, 204, 001, CURRENT_TIMESTAMP());

/* artist */

INSERT INTO artist VALUES (500, 'UBA LUBA', NULL, NULL);
INSERT INTO artist VALUES (501, 'AC/DC', NULL, 500);
INSERT INTO artist VALUES (502, 'GnR', NULL, 501);
INSERT INTO artist VALUES (503, 'Aerosmith', NULL, 501);

/* album */ 

INSERT INTO album VALUES (701, '1st album', CURRENT_TIMESTAMP(), NULL, 501);
INSERT INTO album VALUES (702, '2nd album', CURRENT_TIMESTAMP(), NULL, 501);
INSERT INTO album VALUES (703, 'Rainbow', CURRENT_TIMESTAMP(), NULL, 500);
INSERT INTO album VALUES (704, 'NewYork', CURRENT_TIMESTAMP(), NULL , 503);

/* song */ 

INSERT INTO song VALUES (850, 'Over the rainbow', '00:03:25', 12343, 704);
INSERT INTO song VALUES (851, 'Highway to Hell', '00:03:54', 454888, 702);
INSERT INTO song VALUES (854, 'You shook me all night', '00:04:02', 488787, 701);
INSERT INTO song VALUES (864, 'Hello world', '00:02:54', 74, 703);

/* playlist_has_songs */ 

INSERT INTO playlist_has_songs VALUES (1, 201, 851, 003, CURRENT_TIMESTAMP());
INSERT INTO playlist_has_songs VALUES (2, 201, 854, 001, CURRENT_TIMESTAMP());
INSERT INTO playlist_has_songs VALUES (3, 202, 850, 002, CURRENT_TIMESTAMP());
INSERT INTO playlist_has_songs VALUES (4, 203, 864, 004, CURRENT_TIMESTAMP());

/* user_followed_artists */ 

INSERT INTO user_followed_artists VALUES (050, 501, 001);
INSERT INTO user_followed_artists VALUES (051, 501, 004);
INSERT INTO user_followed_artists VALUES (052, 502, 002);

/* user_favourite_albums */

INSERT INTO user_favourite_albums VALUES (901, 701, 003);
INSERT INTO user_favourite_albums VALUES (902, 702, 003);
INSERT INTO user_favourite_albums VALUES (903, 702, 003);

/* user_favourite_songs */

INSERT INTO user_favourite_songs VALUES (471, 854, 002);
INSERT INTO user_favourite_songs VALUES (472, 851, 004);
INSERT INTO user_favourite_songs VALUES (473, 864, 001);
INSERT INTO user_favourite_songs VALUES (474, 850, 003);
