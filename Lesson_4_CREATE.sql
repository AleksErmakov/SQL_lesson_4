CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	Name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	Name_Alias VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_Artist ( 
	genre_id INTEGER REFERENCES Genre(id),
	artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	Name VARCHAR(40) UNIQUE NOT NULL,
	Release_date INTEGER CHECK(Release_date > 2008) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist_Album ( 
	album_id INTEGER REFERENCES Album(id),
	artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk_2 PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	Name VARCHAR(40) UNIQUE NOT NULL,
	Duration INTEGER NOT NULL,
	Album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	Name VARCHAR(40) UNIQUE NOT NULL,
	Release_date INTEGER CHECK(Release_date > 2010) NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_Collection ( 
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_3 PRIMARY KEY (track_id, collection_id)
);