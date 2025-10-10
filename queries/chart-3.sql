.mode json
SELECT albums.name as album_name, AVG(features.loudness) as average_loudness, albums.release_date
FROM artists
INNER JOIN features, tracks, albums
WHERE  features.track_id= tracks.id  AND tracks.album_id = albums.id AND albums.artist_id = artists.id
GROUP BY album_name