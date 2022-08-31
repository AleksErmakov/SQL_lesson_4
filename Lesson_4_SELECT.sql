--1. количество исполнителей в каждом жанре;
SELECT name, COUNT(name)
FROM genre
JOIN genre_artist ON id = genre_id  
GROUP BY name
ORDER BY COUNT(name); 

--2. количество треков, вошедших в альбомы 2019-2020 годов;

SELECT COUNT(*)
FROM track
JOIN album ON album_id = album.id
WHERE album.release_date 
BETWEEN 2019 AND 2020;

--3. средняя продолжительность треков по каждому альбому;

SELECT album.name, AVG(duration)
FROM track
JOIN album ON album_id = album.id
GROUP BY album.name
ORDER BY AVG(duration);

--4. все исполнители, которые не выпустили альбомы в 2020 году;

SELECT name_alias 
FROM artist
WHERE artist.name_alias NOT IN (
	SELECT artist.name_alias FROM artist
	JOIN artist_album ON artist.id = artist_album.artist_id 
	JOIN album ON album.id = artist_album.album_id
	WHERE album.release_date = 2020
)
ORDER BY artist.name_alias;

--5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

SELECT c.name 
FROM collection AS c 
JOIN track_collection AS tc ON c.id = tc.collection_id  
JOIN track AS t ON tc.track_id = t.id 
JOIN album AS a ON t.album_id = a.id 
JOIN artist_album AS aa ON a.id = aa.album_id 
JOIN artist AS a2 ON aa.artist_id  = a2.id  
WHERE a2.name_alias = 'Frank Sinatra'
GROUP BY c.name
ORDER BY c.name;

--6. название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT a.name
FROM album AS a
JOIN artist_album AS aa ON a.id = aa.album_id
JOIN artist AS a2 ON aa.artist_id = a2.id 
JOIN genre_artist AS ga ON a2.id = ga.artist_id 
JOIN genre AS g ON ga.genre_id = g.id  
GROUP BY a.name 
HAVING COUNT(a.name) > 1;

--7. наименование треков, которые не входят в сборники;

SELECT t.name 
FROM track AS t
LEFT JOIN track_collection AS tc
ON t.id = tc.track_id 
LEFT JOIN collection AS c
ON tc.collection_id = c.id 
WHERE c.name IS NULL;  

--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

SELECT a.name_alias
FROM artist AS a
JOIN artist_album AS aa
ON a.id = aa.artist_id 
JOIN track AS t
ON aa.album_id = t.album_id
WHERE t.duration = (SELECT min(duration) FROM track)
GROUP BY a.name_alias; 

--9. название альбомов, содержащих наименьшее количество треков.

SELECT a.name  
FROM album AS a
JOIN track AS t 
ON a.id = t.album_id
GROUP BY a.name
ORDER BY COUNT(a.name)
LIMIT 1;
