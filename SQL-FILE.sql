CREATE DATABASE OnlineMusicStreaming;
USE OnlineMusicStreaming;

CREATE TABLE User (
    user_id VARCHAR(7) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    address_street VARCHAR(100),
    address_city VARCHAR(50),
    address_zip VARCHAR(10),
    email VARCHAR(100) UNIQUE NOT NULL,
);

CREATE TABLE Phone (
    phone_id VARCHAR(7) PRIMARY KEY,
    user_id VARCHAR(7),
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Artist (
    artist_id VARCHAR(7) PRIMARY KEY,
    user_id VARCHAR(7)
    stage_name VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Album (
    album_id  VARCHAR(7) PRIMARY KEY,
    artist_id  VARCHAR(7) NOT NULL,
    album_name VARCHAR(100) NOT NULL,
    release_date DATE,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

CREATE TABLE Genre (
    genre_id VARCHAR(7) PRIMARY KEY,
    genre_name VARCHAR(50) UNIQUE,

);

CREATE TABLE Track (
    track_id  VARCHAR(7) PRIMARY KEY,
    album_id  VARCHAR(7) NOT NULL,
    genre_id  VARCHAR(7) NOT NULL,
    track_name VARCHAR(100) NOT NULL,
    duration INT CHECK (duration > 0),
    FOREIGN KEY (album_id) REFERENCES Album(album_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TABLE Playlist (
    playlist_id VARCHAR(8) PRIMARY KEY,
    user_id  VARCHAR(7) NOT NULL,
    playlist_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Playlist_Track (
    playlist_trackid INT AUTO_INCREMENT PRIMARY KEY,
    playlist_id VARCHAR(8),
    track_id VARCHAR(7),
    FOREIGN KEY (playlist_id) REFERENCES Playlist(playlist_id),
    FOREIGN KEY (track_id) REFERENCES Track(track_id)
);
