DROP TABLE IF EXISTS playlists;

CREATE TABLE playlists (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    user_id INTEGER NOT NULL, 
    name TEXT UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id) 
    );