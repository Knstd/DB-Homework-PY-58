--количество исполнителей в каждом жанре
SELECT g.name, COUNT(a.name)
FROM genres g
LEFT JOIN artists_genres ag ON g.genre_id = ag.genre_id
LEFT JOIN artists a ON a.artist_id = ag.artist_id 
GROUP BY g.name; 

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT a.release_year, COUNT(t.track_id) 
FROM tracks t
LEFT JOIN albums a ON t.track_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020
GROUP BY a.release_year;

--средняя продолжительность треков по каждому альбому
SELECT a.name, AVG(t.duration) AS Average_duration
FROM tracks t
LEFT JOIN albums a ON t.album = a.album_id
GROUP BY a.name;

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT a.name, al.release_year
FROM artists a
LEFT JOIN albums al ON a.artist_id = al.album_id  
WHERE al.release_year != 2020
ORDER BY al.release_year;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT DISTINCT c.name AS collection, a.name AS artist
FROM collections c
LEFT JOIN collections_tracks ct ON ct.collection_id = c.collection_id
LEFT JOIN tracks t ON ct.track_id = t.track_id 
LEFT JOIN albums al ON t.album = al.album_id 
LEFT JOIN artists_albums aa ON aa.album_id = al.album_id 
LEFT JOIN artists a ON aa.artist_id = a.artist_id 
WHERE a.name = 'Red Hot Chili Peppers'; 

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT al.name, a.name AS artist 
FROM albums al
LEFT JOIN artists_albums aa ON al.album_id = aa.album_id  
LEFT JOIN artists a ON aa.artist_id = a.artist_id 
LEFT JOIN (SELECT artist_id, COUNT(genre_id) AS g
			FROM artists_genres ag
			GROUP BY artist_id
			HAVING COUNT(genre_id) > 1) AS res
ON res.artist_id = aa.artist_id
WHERE res.g IS NOT NULL

--наименование треков, которые не входят в сборники
SELECT DISTINCT t.name
FROM tracks t
LEFT JOIN collections_tracks ct ON ct.track_id = t.track_id
WHERE ct.track_id IS NULL

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT a.name, t.duration 
FROM artists a 
LEFT JOIN artists_albums aa ON aa.artist_id = a.artist_id 
LEFT JOIN albums al ON al.album_id = aa.album_id 
LEFT JOIN tracks t ON t.album = al.album_id 
WHERE t.duration = (SELECT MIN(duration)
					FROM tracks)

--название альбомов, содержащих наименьшее количество треков
SELECT al.name, COUNT(t.track_id)
FROM albums al
LEFT JOIN tracks t ON t.album = al.album_id
GROUP BY al.name
HAVING COUNT(t.track_id) = (SELECT MIN(res)
							FROM (SELECT al.name, COUNT(t.track_id) res
								  FROM albums al
								  LEFT JOIN tracks t ON t.album = al.album_id
								  GROUP BY al.name) AS r)


