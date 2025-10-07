--[
--  {
--    "artist_name": "Deftones",
--    "album_name": "White Pony",
--    "average_danceability": 0.5,
--    "average_energy": 0.5,
--    "average_speechiness": 0.5,
--    "average_acousticness": 0.5,
--    "average_liveness": 0.5
--  }

.mode json
SELECT artists.name as artist_name, albums.name as album_name, AVG(features.danceability) as average_danceability,
AVG(features.energy) as average_energy, AVG(features.speechiness) as average_speechiness,
AVG(features.acousticness) as average_acousticness, AVG(features.liveness) as average_liveness
FROM artists
INNER JOIN features, tracks, albums
WHERE  features.track_id= tracks.id  AND tracks.album_id = albums.id AND albums.artist_id = artists.id
GROUP BY artist_name