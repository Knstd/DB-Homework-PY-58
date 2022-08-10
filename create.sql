CREATE TABLE IF NOT EXISTS artists
(
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS genres
(
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL 
);


CREATE TABLE IF NOT EXISTS albums
(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS tracks
(
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration SMALLINT NOT NULL ,
	album INTEGER REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections
(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS artists_genres
(
	artist_id INTEGER REFERENCES artists(artist_id),
	genre_id INTEGER REFERENCES genres(genre_id),
	CONSTRAINT artists_genres_pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS artists_albums
(
	artist_id INTEGER REFERENCES artists(artist_id),
	album_id INTEGER REFERENCES albums(album_id),
	CONSTRAINT artists_albums_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS collections_tracks
(
	collection_id INTEGER REFERENCES collections(collection_id),
	track_id INTEGER REFERENCES tracks(track_id),
	CONSTRAINT collections_tracks_pk PRIMARY KEY (collection_id, track_id)
);