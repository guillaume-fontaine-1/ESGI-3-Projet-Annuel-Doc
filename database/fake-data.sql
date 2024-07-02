-- Insertion des données

-- Insertion des rôles
INSERT INTO Roles (name) VALUES ('MUSIC_LOVER'), ('ADMIN');

-- Insertion des utilisateurs
INSERT INTO Users (name, email, password, registration_date, role_id) VALUES
('John Doe', 'john.doe@example.com', 'password123', '2023-01-01 00:00:00', 1),
('Jane Smith', 'jane.smith@example.com', 'password456', '2023-01-02 00:00:00', 2);

-- Insertion des genres
INSERT INTO Genres (name, description) VALUES
('Rock', 'A genre of popular music that originated as "rock and roll" in the United States.'),
('Jazz', 'A music genre that originated in the African-American communities of New Orleans.'),
('Classical', 'Art music produced or rooted in the traditions of Western culture.');

-- Insertion des artistes
INSERT INTO Artists (name) VALUES
('Artiste Un'),
('Artiste Deux');

-- Insertion des albums
INSERT INTO Albums (title, creation_date) VALUES
('Album Un', '2023-01-01 00:00:00'),
('Album Deux', '2023-01-02 00:00:00');

-- Insertion de la musique
INSERT INTO Music (title, release_date, duration, likes, play_count, file_path) VALUES
('Chanson Un', '2023-01-01 00:00:00', 210, 100, 1000, 'path/to/chanson_un.mp3'),
('Chanson Deux', '2023-01-02 00:00:00', 180, 200, 1500, 'path/to/chanson_deux.mp3');

-- Insertion des playlists
INSERT INTO Playlists (title, creator_id, creation_date) VALUES
('Mes chansons préférées', 1, '2023-01-01 00:00:00'),
('Ambiance détente', 1, '2023-01-02 00:00:00');

-- Lien entre musique et genres
INSERT INTO Music_Genres (music_id, genre_id) VALUES
(1, 1), -- 'Chanson Un' est de genre 'Rock'
(2, 2); -- 'Chanson Deux' est de genre 'Jazz'

-- Lien entre musique et artistes
INSERT INTO Music_Artists (music_id, artist_id) VALUES
(1, 1), -- 'Chanson Un' est de 'Artiste Un'
(2, 2); -- 'Chanson Deux' est de 'Artiste Deux'

-- Lien entre musique et albums
INSERT INTO Music_Albums (music_id, album_id) VALUES
(1, 1), -- 'Chanson Un' est dans 'Album Un'
(2, 2); -- 'Chanson Deux' est dans 'Album Deux'

-- Lien entre playlists et musique
INSERT INTO Playlist_Music (playlist_id, music_id) VALUES
(1, 1), -- 'Chanson Un' est dans la playlist 'Mes chansons préférées'
(2, 2); -- 'Chanson Deux' est dans la playlist 'Ambiance détente'

-- Musique aimée par les utilisateurs
INSERT INTO User_Liked_Music (user_id, music_id) VALUES
(1, 1), -- 'John Doe' aime 'Chanson Un'
(1, 2); -- 'John Doe' aime 'Chanson Deux'

-- Insertion des abonnements
INSERT INTO Subscriptions (name) VALUES
('Premium'), ('Family');

-- Lien entre utilisateurs et abonnements
INSERT INTO User_Subscriptions (user_id, subscription_id, start_date, end_date) VALUES
(1, 1, '2024-01-01 00:00:00', '2025-01-01 00:00:00'), -- 'John Doe' a un abonnement 'Premium'