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
    user_id VARCHAR(7),
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

ALTER TABLE Phone
MODIFY user_id VARCHAR(7) NOT NULL;

ALTER TABLE Artist
MODIFY user_id VARCHAR(7) NOT NULL;

ALTER TABLE Genre
MODIFY genre_name VARCHAR(50) NOT NULL;

ALTER TABLE Playlist_Track
MODIFY playlist_id VARCHAR(8) NOT NULL;

ALTER TABLE Playlist_Track
MODIFY track_id VARCHAR(7) NOT NULL;

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

INSERT INTO Phone(phone_id, user_id, phone_number) VALUES
('PHN-001', 'USR-001', '+977-9746285709'),
('PHN-002', 'USR-002', '+977-9708517272'),
('PHN-003', 'USR-003', '+977-9801122334'),
('PHN-004', 'USR-004', '+977-9802233445'),
('PHN-005', 'USR-005', '+977-9803344556'),
('PHN-006', 'USR-006', '+977-9804455667'),
('PHN-007', 'USR-007', '+977-9805566778'),
('PHN-008', 'USR-008', '+977-9806677889'),
('PHN-009', 'USR-009', '+977-9807788990'),
('PHN-010', 'USR-010', '+977-9808899001'),
('PHN-011', 'USR-011', '+977-9809900112'),
('PHN-012', 'USR-012', '+977-9810011223'),
('PHN-013', 'USR-013', '+977-9811122334'),
('PHN-014', 'USR-014', '+977-9812233445'),
('PHN-015', 'USR-015', '+977-9813344556'),
('PHN-016', 'USR-016', '+977-9814455667'),
('PHN-017', 'USR-017', '+977-9815566778'),
('PHN-018', 'USR-018', '+977-9816677889'),
('PHN-019', 'USR-019', '+977-9817788990'),
('PHN-020', 'USR-020', '+977-9818899001'),
('PHN-021', 'USR-021', '+977-9819900112'),
('PHN-022', 'USR-022', '+977-9820011223'),
('PHN-023', 'USR-023', '+977-9821122334'),
('PHN-024', 'USR-024', '+977-9822233445'),
('PHN-025', 'USR-025', '+977-9823344556'),
('PHN-026', 'USR-026', '+977-9824455667'),
('PHN-027', 'USR-027', '+977-9825566778'),
('PHN-028', 'USR-028', '+977-9826677889'),
('PHN-029', 'USR-029', '+977-9827788990'),
('PHN-030', 'USR-030', '+977-9828899001'),
('PHN-031', 'USR-031', '+977-9829900112'),
('PHN-032', 'USR-032', '+977-9830011223'),
('PHN-033', 'USR-033', '+977-9831122334'),
('PHN-034', 'USR-034', '+977-9832233445'),
('PHN-035', 'USR-035', '+977-9833344556'),
('PHN-036', 'USR-036', '+977-9834455667'),
('PHN-037', 'USR-037', '+977-9835566778'),
('PHN-038', 'USR-038', '+977-9836677889'),
('PHN-039', 'USR-039', '+977-9837788990'),
('PHN-040', 'USR-040', '+977-9838899001'),
('PHN-041', 'USR-041', '+977-9839900112'),
('PHN-042', 'USR-042', '+977-9840011223'),
('PHN-043', 'USR-043', '+977-9841122334'),
('PHN-044', 'USR-044', '+977-9842233445'),
('PHN-045', 'USR-045', '+977-9843344556');

INSERT INTO Artist(artist_id, user_id, stage_name) VALUES
('ART-001', 'USR-005', 'Rocky'),
('ART-002', 'USR-006', 'DJ Snake'),
('ART-003', 'USR-007', 'Young Money'),
('ART-004', 'USR-008', 'Lil Buddha'),
('ART-005', 'USR-009', 'Trap King'),
('ART-006', 'USR-010', 'MC Nirvana'),
('ART-007', 'USR-011', 'Ragga'),
('ART-008', 'USR-012', 'King Yeti'),
('ART-009', 'USR-013', 'Urban Monk'),
('ART-010', 'USR-014', 'Zen Flow'),
('ART-011', 'USR-015', 'NepHop Star'),
('ART-012', 'USR-016', 'Beatmaster K'),
('ART-013', 'USR-017', 'Thug Monk'),
('ART-014', 'USR-018', 'MC Shiva'),
('ART-015', 'USR-019', 'KTM Rapper'),
('ART-016', 'USR-020', 'DJ Thunder'),
('ART-017', 'USR-021', 'MC Everest'),
('ART-018', 'USR-022', 'Trap Buddha'),
('ART-019', 'USR-023', 'Urban Yeti'),
('ART-020', 'USR-024', 'Rhythm King'),
('ART-021', 'USR-025', 'Zen Beats'),
('ART-022', 'USR-026', 'KTM Flow'),
('ART-023', 'USR-027', 'Ghetto Monk'),
('ART-024', 'USR-028', 'Himal Rap'),
('ART-025', 'USR-029', 'Bass Lama'),
('ART-026', 'USR-030', 'MC Mustang'),
('ART-027', 'USR-031', 'Trap Sherpa'),
('ART-028', 'USR-032', 'Urban Lama'),
('ART-029', 'USR-033', 'Zen Wave'),
('ART-030', 'USR-034', 'MC Bhaktapur');

INSERT INTO Album(album_id, artist_id, album_name, release_date) VALUES
('ALB-001', 'ART-002', 'Neon Dreams', '2025-01-08'),
('ALB-002', 'ART-003', 'Midnight Hustle', '2025-02-15'),
('ALB-003', 'ART-004', 'Kathmandu Flow', '2025-03-20'),
('ALB-004', 'ART-005', 'Trap Himalayas', '2025-04-12'),
('ALB-005', 'ART-006', 'Urban Echoes', '2025-05-05'),
('ALB-006', 'ART-007', 'Bassline Monk', '2025-06-22'),
('ALB-007', 'ART-008', 'Zen Frequency', '2025-07-19'),
('ALB-008', 'ART-009', 'City Lights', '2025-08-01'),
('ALB-009', 'ART-010', 'Everest Beats', '2025-09-14'),
('ALB-010', 'ART-011', 'Ragga Nights', '2025-10-10'),
('ALB-011','ART-002','Hazy Nights','2025-10-10');

INSERT INTO Genre(genre_id, genre_name) VALUES
('GEN-001', 'Rock'),
('GEN-002', 'Hip Hop'),
('GEN-003', 'Rap'),
('GEN-004', 'Pop'),
('GEN-005', 'Jazz'),
('GEN-006', 'Classical'),
('GEN-007', 'Electronic'),
('GEN-008', 'EDM'),
('GEN-009', 'Trap'),
('GEN-010', 'R&B'),
('GEN-011', 'Reggae'),
('GEN-012', 'Folk'),
('GEN-013', 'Country'),
('GEN-014', 'Metal'),
('GEN-015', 'Blues'),
('GEN-016', 'Soul'),
('GEN-017', 'Indie'),
('GEN-018', 'Alternative'),
('GEN-019', 'Techno'),
('GEN-020', 'K-Pop');

INSERT INTO Track(track_id, album_id, genre_id, track_name, duration) VALUES
('TRK-001', 'ALB-002', 'GEN-020', 'Kiss of Death', 215),
('TRK-002', 'ALB-002', 'GEN-020', 'Neon Soul', 198),
('TRK-003', 'ALB-003', 'GEN-002', 'Hustle Anthem', 185),
('TRK-004', 'ALB-003', 'GEN-002', 'Kathmandu Nights', 240),
('TRK-005', 'ALB-004', 'GEN-009', 'Trap Summit', 210),
('TRK-006', 'ALB-004', 'GEN-009', 'Bassline Hills', 222),
('TRK-007', 'ALB-005', 'GEN-007', 'Echo Chamber', 200),
('TRK-008', 'ALB-006', 'GEN-011', 'Ragga Groove', 260),
('TRK-009', 'ALB-007', 'GEN-016', 'Zen Flow', 230),
('TRK-010', 'ALB-008', 'GEN-004', 'City Dreams', 190);

INSERT INTO Playlist(playlist_id, user_id, playlist_name) VALUES
('PLAY-001', 'USR-001', 'Her'),
('PLAY-002', 'USR-002', 'Him'),
('PLAY-003', 'USR-004', 'Workout Hits'),
('PLAY-004', 'USR-005', 'Chill Beats'),
('PLAY-005', 'USR-006', 'Road Trip'),
('PLAY-006', 'USR-007', 'Party Time'),
('PLAY-007', 'USR-008', 'Old School'),
('PLAY-008', 'USR-009', 'Focus Mode'),
('PLAY-009', 'USR-010', 'Summer 2025'),
('PLAY-010', 'USR-011', 'Nepali Classics'),
('PLAY-011', 'USR-012', 'Zen & Calm'),
('PLAY-012', 'USR-013', 'Hip Hop Bangers'),
('PLAY-013', 'USR-014', 'Love Songs'),
('PLAY-014', 'USR-015', 'Rap Gods'),
('PLAY-015', 'USR-016', 'Travel Tunes');

INSERT INTO Playlist_Track(playlist_id, track_id) VALUES
('PLAY-001', 'TRK-001'),
('PLAY-001', 'TRK-003'),
('PLAY-002', 'TRK-002'),
('PLAY-002', 'TRK-004'),
('PLAY-003', 'TRK-005'),
('PLAY-003', 'TRK-006'),
('PLAY-004', 'TRK-007'),
('PLAY-005', 'TRK-008'),
('PLAY-006', 'TRK-009'),
('PLAY-007', 'TRK-010');

-- Count Function
SELECT COUNT(*) AS total_users FROM User;

-- Sum Function
SELECT SUM(duration) AS total_duration FROM Track;

-- Average Function
SELECT AVG(duration) AS average_duration FROM Track;

-- Min Function
SELECT MIN(release_date) AS earliest_release FROM Album;

-- Max Function
SELECT MAX(release_date) AS latest_release FROM Album;

-- Order by 
SELECT * FROM Album
ORDER BY release_date ASC;

SELECT * FROM Album
ORDER BY release_date DESC;

-- GROUP BY + HAVING
SELECT artist_id, COUNT(*) AS album_count
FROM Album
GROUP BY artist_id
HAVING COUNT(*) > 1;

-- NOT IN
SELECT user_id, first_name FROM User
WHERE user_id NOT IN (SELECT user_id FROM Artist);

-- OR
SELECT * FROM Track
WHERE duration < 120 OR duration > 300;

-- EXISTS
SELECT user_id, first_name FROM User u
WHERE EXISTS (
    SELECT 1 FROM Playlist p WHERE p.user_id = u.user_id
);

-- BETWEEN
SELECT * FROM Track
WHERE duration BETWEEN 180 AND 240;

-- AND
SELECT * FROM Album
WHERE artist_id = 'ART-002' AND release_date > '2024-12-31';

-- LIKE
SELECT * FROM Artist
WHERE stage_name LIKE '%MC%';


-- View
CREATE VIEW AlbumArtistView AS
SELECT 
    a.album_id,
    a.album_name,
    ar.stage_name,
    a.release_date
FROM Album a
JOIN Artist ar ON a.artist_id = ar.artist_id;
SELECT * FROM AlbumArtistView;

-- View
CREATE VIEW TrackDetailsView AS
SELECT 
    t.track_id,
    t.track_name,
    al.album_name,
    g.genre_name,
    t.duration
FROM Track t
JOIN Album al ON t.album_id = al.album_id
JOIN Genre g ON t.genre_id = g.genre_id;
SELECT * FROM TrackDetailsView;



-- INNER JOIN: Get all tracks with album names
SELECT t.track_name, al.album_name
FROM Track t
INNER JOIN Album al ON t.album_id = al.album_id;

-- LEFT JOIN: Get all users and their artist profile if they have one
SELECT u.first_name, u.last_name, ar.stage_name
FROM User u
LEFT JOIN Artist ar ON u.user_id = ar.user_id;

-- RIGHT JOIN: Get all artists and their user info
SELECT ar.stage_name, u.first_name
FROM Artist ar
RIGHT JOIN User u ON u.user_id = ar.user_id;

