insert into artists(artistID, name) values
(1, 'Lindemann'),
(2, 'Freddie mercury'),
(3, 'Kris Kross'),
(4, 'Michael Jackson');

insert into genres(genresID, name) values
(1, 'Rock'),
(2, 'Pop'),
(3, 'Rap');

insert into albums(albumID, title, releaseyear) values
(1, 'Skills in Pills', 2019),
(2, 'Bad', 1988),
(3, 'Hot Space', 1982);

insert into tracks(trackID, title, duration, albumID) values
(1, 'Frau & Mann', '00:03:34', 1),
(2, 'Fish On', '00:04:12', 1),
(3, 'Smooth Criminal', '00:04:15', 2),
(4, 'Billie Jean', '00:04:56', 2),
(5, 'Hot Space my', '00:04:13', 3),
(6, 'Body Language', '00:04:32', 3);

insert into compilations(compilationID, title, releasyyear) values
(1, 'best classic rock', 2008),
(2, 'timeless pop hits', 2011),
(3, 'popular music', 2018),
(4, 'music that has passed through time', 2019);

insert into compilations_tracks(compilationID, trackID) values
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 5),
(4, 6);

insert into artists_albums(artistID, albumID) values
(1, 1),
(4, 2),
(2, 3);

insert into artists_genres(artistID, genresID) values
(1, 1),
(2, 1),
(3, 3),
(4, 2);