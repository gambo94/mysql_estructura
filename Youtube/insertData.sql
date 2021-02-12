

/* users */
INSERT INTO user VALUES('fakeuser', 'soyusuario@usuario.es', '1993-10-03', 'F', 'Spain', '080839');
INSERT INTO user VALUES('eren', 'titanfundador@aot.es', '1995-04-03', 'M', 'Japan', '080374');
INSERT INTO user VALUES('annie', 'titanhembra@aot.es', '1996-05-05', 'F', 'Japan', '050343');
INSERT INTO user VALUES('pieck', 'cartitan@aot.jp', '1992-06-07', 'other', 'Japan', '092774');
INSERT INTO user VALUES('mikasa', 'mikasa@aot.es', '1994-05-03', 'F', 'Japan', '283374');

/* videos */

INSERT INTO video VALUES(0001, 'eren vs. annie', '00:03:45', '14MB', 'erann.mp4', 1234323, 456, 43, 'Public', CURRENT_TIMESTAMP(), 'annie');
INSERT INTO video VALUES(0002, 'annie transforms', '00:00:54', '8MB', 'anntran.mp4', 43454, 32, 56, 'Private', CURRENT_TIMESTAMP(), 'annie');
INSERT INTO video VALUES(0003, 'how to use 3dm gear', '00:05:03', '40MB', 'tut.mp4', 23453432, 400, 32, 'Hidden', CURRENT_TIMESTAMP(), 'mikasa');
INSERT INTO video VALUES(0004, 'pieck runs', '00:00:23', '2MB', 'runs.mp4', 234, 54, 3, 'Public', CURRENT_TIMESTAMP(), 'pieck');
INSERT INTO video VALUES(0005, 'fakevideo', '04:03:32', '400MB', 'fake.mp4', 5543, 3, 565, 'Public', CURRENT_TIMESTAMP(), 'fakeuser');

/* channels */ 

INSERT INTO channel VALUES('fakeuser', 'thefakechannel', 'An awful fake channel', CURRENT_TIMESTAMP());
INSERT INTO channel VALUES('eren', 'Eren Yeager', 'The funding titan channel', CURRENT_TIMESTAMP());
INSERT INTO channel VALUES('annie', 'Annie Leonhart', 'The female titan channel', CURRENT_TIMESTAMP());
INSERT INTO channel VALUES('pieck', 'Pieck Cart', 'The smartest titan channel', CURRENT_TIMESTAMP());
INSERT INTO channel VALUES('mikasa', 'Mikasa Ackerman', 'The only survivor channel', CURRENT_TIMESTAMP());

/* subscription */

INSERT INTO subscription VALUES(1, 'mikasa', 'Eren Yeager');
INSERT INTO subscription VALUES(2, 'mikasa', 'Pieck Cart');
INSERT INTO subscription VALUES(3, 'eren', 'Mikasa Ackerman');
INSERT INTO subscription VALUES(4, 'annie', 'Pieck Cart');
INSERT INTO subscription VALUES(5, 'fakeuser', 'Eren Yeager');

/* playlist */

INSERT INTO playlist VALUES(01, 'Attack on Titan', CURRENT_TIMESTAMP(), 'Public', 'eren');
INSERT INTO playlist VALUES(02, 'Fake playlist', CURRENT_TIMESTAMP(), 'Private', 'fakeuser');

/* playlist has videos */

INSERT INTO playlist_has_videos VALUES (10, 01, 0001);
INSERT INTO playlist_has_videos VALUES (11, 01, 0002);
INSERT INTO playlist_has_videos VALUES (12, 01, 0004);
INSERT INTO playlist_has_videos VALUES (13, 01, 0003);
INSERT INTO playlist_has_videos VALUES (14, 02, 0005);

/* comments */

INSERT INTO comment VALUES (20, 'Que chulo este video, gracias por la ayuda, ahora puedo matar titanes', CURRENT_TIMESTAMP(), 0003, 'fakeuser');
INSERT INTO comment VALUES (21, 'Video orrendo', CURRENT_TIMESTAMP(), 0004, 'eren');
INSERT INTO comment VALUES (22, 'Arigatou', CURRENT_TIMESTAMP(), 0003, 'annie');

/* tag */

INSERT INTO tag VALUES (100, 'anime');
INSERT INTO tag VALUES (101, 'action');
INSERT INTO tag VALUES (102, 'fight');
INSERT INTO tag VALUES (103, 'fantasy');
INSERT INTO tag VALUES (104, 'sci-fi');
INSERT INTO tag VALUES (105, 'bloody');
INSERT INTO tag VALUES (106, 'tutorial');

/* video has tags */

INSERT INTO video_has_tags VALUES (1, 0001, 100);
INSERT INTO video_has_tags VALUES (2, 0001, 102);
INSERT INTO video_has_tags VALUES (3, 0001, 105);
INSERT INTO video_has_tags VALUES (4, 0003, 106);

/* like_dislike */

INSERT INTO like_disklike VALUES (1, 'Like', CURRENT_TIMESTAMP(), 0001, 'mikasa');
INSERT INTO like_disklike VALUES (2, 'Dislike', CURRENT_TIMESTAMP(), 0001, 'pieck');
INSERT INTO like_disklike VALUES (3, 'Dislike', CURRENT_TIMESTAMP(), 0003, 'pieck');
INSERT INTO like_disklike VALUES (4, 'Dislike', CURRENT_TIMESTAMP(), 0004, 'eren');

/* like-dislike-comment */

INSERT INTO like_disklike_comment VALUES (1, 22, 'pieck', 'Like', CURRENT_TIMESTAMP());
INSERT INTO like_disklike_comment VALUES (2, 22, 'eren', 'Dislike', CURRENT_TIMESTAMP());
INSERT INTO like_disklike_comment VALUES (1, 20, 'mikasa', 'Like', CURRENT_TIMESTAMP());















