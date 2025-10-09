DROP TABLE IF EXISTS playlist_tracks;
CREATE TABLE playlist_tracks (playlist_id INTEGER NOT NULL, track_id TEXT NOT NULL,
FOREIGN KEY (playlist_id) REFERENCES playlist(id) , FOREIGN KEY (track_id) REFERENCES tracks(id));