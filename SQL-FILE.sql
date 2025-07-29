CREATE DATABASE OnlineMusicStreaming;
USE OnlineMusicStreaming;

CREATE TABLE User (
    user_id VARCHAR(7) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
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
    genre_name VARCHAR(50) UNIQUE

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

INSERT INTO USER(user_id, first_name, last_name, date_of_birth, email) VALUES
('USR-001', 'Apil', 'Adhikari', '2005-10-27', 'apiladhikari@gmail.com'),
('USR-002', 'Kristhi', 'Chhetri', '2005-11-06', 'krishtichhetri@gmail.com'),
('USR-003', 'Shree', 'Shrestha', '2003-01-27', 'shrestha@gmail.com'),
('USR-004', 'Sita', 'Thapa', '2000-05-12', 'sita@gmail.com'),
('USR-005', 'Hari', 'Magar', '1999-03-15', 'hari@gmail.com'),
('USR-006', 'Gita', 'Rai', '2001-07-19', 'gita@gmail.com'),
('USR-007', 'Kiran', 'Lama', '2002-02-23', 'kiran@gmail.com'),
('USR-008', 'Mina', 'Gurung', '1998-12-11', 'mina@gmail.com'),
('USR-009', 'Sunil', 'Tamang', '2003-06-30', 'sunil@gmail.com'),
('USR-010', 'Bina', 'KC', '2004-09-09', 'bina@gmail.com'),
('USR-011', 'Dipak', 'Maharjan', '2000-01-05', 'dipak@gmail.com'),
('USR-012', 'Prakash', 'Shah', '1997-08-21', 'prakash@gmail.com'),
('USR-013', 'Nirajan', 'Bhattarai', '2001-10-10', 'nirajan@gmail.com'),
('USR-014', 'Rupa', 'Karki', '2005-04-17', 'rupa@gmail.com'),
('USR-015', 'Suman', 'Bhandari', '2002-11-11', 'suman@gmail.com'),
('USR-016', 'Anisha', 'Paudel', '2003-02-14', 'anisha@gmail.com'),
('USR-017', 'Krishna', 'Poudel', '2000-05-03', 'krishna@gmail.com'),
('USR-018', 'Raj', 'Kharel', '1999-07-25', 'raj@gmail.com'),
('USR-019', 'Nisha', 'Basnet', '2001-03-30', 'nisha@gmail.com'),
('USR-020', 'Bibek', 'Sharma', '2002-06-19', 'bibek@gmail.com'),
('USR-021', 'Aayush', 'Joshi', '2004-08-22', 'aayush@gmail.com'),
('USR-022', 'Sarita', 'Shrestha', '2003-12-12', 'sarita@gmail.com'),
('USR-023', 'Rajan', 'Malla', '2001-01-27', 'rajan@gmail.com'),
('USR-024', 'Kusum', 'Rana', '2000-09-18', 'kusum@gmail.com'),
('USR-025', 'Manish', 'Shakya', '1999-04-09', 'manish@gmail.com'),
('USR-026', 'Pooja', 'Maharjan', '2005-11-02', 'pooja@gmail.com'),
('USR-027', 'Subash', 'Luitel', '2003-07-07', 'subash@gmail.com'),
('USR-028', 'Kabita', 'Rai', '2002-05-29', 'kabita@gmail.com'),
('USR-029', 'Dipesh', 'Bista', '2001-06-06', 'dipesh@gmail.com'),
('USR-030', 'Anil', 'Regmi', '2000-03-03', 'anil@gmail.com'),
('USR-031', 'Sabina', 'BK', '1998-08-08', 'sabina@gmail.com'),
('USR-032', 'Ashish', 'Karki', '2004-04-04', 'ashish@gmail.com'),
('USR-033', 'Sujata', 'Pandey', '2005-05-05', 'sujata@gmail.com'),
('USR-034', 'Roshan', 'Raut', '2003-03-03', 'roshan@gmail.com'),
('USR-035', 'Deepa', 'Malla', '2002-02-02', 'deepa@gmail.com'),
('USR-036', 'Pratik', 'Shahi', '2001-01-01', 'pratik@gmail.com'),
('USR-037', 'Kushal', 'Bista', '2000-10-10', 'kushal@gmail.com'),
('USR-038', 'Sweta', 'Basnet', '1999-09-09', 'sweta@gmail.com'),
('USR-039', 'Santosh', 'Adhikari', '1998-12-12', 'santosh@gmail.com'),
('USR-040', 'Rekha', 'Rana', '2004-04-24', 'rekha@gmail.com'),
('USR-041', 'Laxmi', 'Kandel', '2005-05-25', 'laxmi@gmail.com'),
('USR-042', 'Suresh', 'Yadav', '2003-03-13', 'suresh@gmail.com'),
('USR-043', 'Bijaya', 'Shrestha', '2002-02-22', 'bijaya@gmail.com'),
('USR-044', 'Sneha', 'Rai', '2001-01-11', 'sneha@gmail.com'),
('USR-045', 'Rohit', 'Magar', '2000-12-31', 'rohit@gmail.com');
