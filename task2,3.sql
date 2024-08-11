#Задание 2

select title, duration
from tracks
where duration = (select max(duration) from tracks);

select title, duration
from tracks
where duration >= '00:03:50';

select title, releasyyear
from compilations
where releasyyear between 2018 and 2020;

select name
from artists
where name not like '% %';

select title
from tracks
where title LIKE '%my%';

#Задание 3

SELECT g.Name AS Genre, COUNT(ag.ArtistID) AS ArtistCount
FROM genres g
JOIN artists_genres ag ON g.GenresID = ag.GenresID
GROUP BY g.Name;

select count(trackID)
from albums
join tracks on tracks.albumid = albums.albumid
where albums.releaseyear between 2019 and 2020;

select AVG(tracks.duration), albums.title
from albums
join tracks on tracks.albumid = albums.albumid
group by albums.title;

select name
from artists
where artistID not in (
select distinct artists.artistid
from artists
join artists_albums on artists.artistID = artists_albums.artistID
join albums on artists_albums.AlbumID = albums.AlbumID
where albums.ReleaseYear = 2020);

select compilations.title
from artists
join artists_albums on artists.artistID = artists_albums.artistID
join albums on artists_albums.albumID = albums.AlbumID
join tracks on albums.AlbumID = tracks.AlbumID
join compilations_tracks on tracks.trackID = compilations_tracks.trackid
join compilations on compilations_tracks.compilationID = compilations.compilationID
where artists.name = 'Lindemann';