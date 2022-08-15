INSERT INTO artists (name) 
VALUES
	('The Prodigy'),
	('Snoop Dog'),
	('Руки Вверх!'),
	('Korn'),
	('Linkin Park'),
	('Дельфин'),
	('Queen'),
	('Сплин'),
	('Metallica'),
	('Red Hot Chili Peppers');
	
INSERT INTO genres (name)
VALUES
	('Pop'),
	('Rock'),
	('Rap'),
	('Electronic'),
	('Metal');

INSERT INTO albums (name, release_year)
VALUES
	('The fat of the land', 1997),
	('Doggystyle', 1993),
	('Без тормозов', 2019),
	('Follow the leader', 1998),
	('Hybrid Theory', 2019),
	('Глубина резкости', 1999),
	('Queen', 1973),
	('Гранатовый альбом', 1998),
	('Maser of Puppets', 1986),
	('Load', 2019),
	('By the way', 2020);

INSERT INTO tracks (name, duration, album)
VALUES
	('Smack my bitch up', 343, 1),
	('My Breath', 534, 1),
	('Serial Killa', 215, 2),
	('Doggy Dogg World', 305, 2),
	('Ну где же вы девчонки?', 278, 3),
	('Мой Атаман', 218, 3),
	('Freak on a Leash', 255, 4),
	('Pretty', 252, 4),
	('Papercut', 185, 5),
	('Runaway', 184, 5),
	('Дверь', 257, 6),
	('Тишина', 265, 6),
	('Keep Yourself Alive', 244, 7),
	('My Liar', 385, 7),
	('Весь этот бред', 186, 8),
	('Выхода нет', 223, 8),
	('Battery', 313, 9),
	('Disposable Heroes', 497, 9),
	('Can’t Stop', 269, 10),
	('Midnight', 295, 10),
	('King Nothing', 196, 11);

INSERT INTO collections (name, release_year)
VALUES
	('Greatest Hits', 1990),
	('MP3 Collection', 2005),
	('Music Top', 1999),
	('Rock stars', 2020),
	('Romantic Collection', 2019),
	('Dance Hits', 2002),
	('Rap territory', 2018),
	('Metal Ballads', 1998);

INSERT INTO artists_genres
VALUES
	(1, 4),
	(2, 3),
	(3, 1),
	(4, 2),
	(4, 5),
	(5, 2),
	(5, 3),
	(6, 3),
	(6, 4),
	(7, 2),
	(8, 2),
	(9, 2),
	(9, 5),
	(10, 2);

INSERT INTO artists_albums
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(9, 11);

INSERT INTO collections_tracks 
VALUES
	(1, 1),
	(1, 3),
	(1, 7),
	(2, 2),
	(2, 5),
	(2, 12),
	(3, 6),
	(3, 17),
	(3, 19),
	(4, 7),
	(4, 9),
	(4, 19),
	(4, 20),
	(5, 11),
	(5, 15),
	(5, 16),
	(6, 1),
	(6, 17),
	(7, 4),
	(8, 19),
	(8, 20);
