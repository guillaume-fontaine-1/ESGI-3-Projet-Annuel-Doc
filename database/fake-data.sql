-- Insertion des données de test pour l'environnement de développement

-- Insertion des rôles
INSERT INTO roles (name) VALUES ('admin'), ('user');

-- Insertion des utilisateurs
INSERT INTO users (name, email, password, email_verified_at, role_id, created_at, updated_at) VALUES
('John Doe', 'john.doe@example.com', 'password123', '2023-01-01 00:00:00', 1, NOW(), NOW()),
('Jane Smith', 'jane.smith@example.com', 'password456', '2023-01-02 00:00:00', 2, NOW(), NOW());

-- Insertion des genres
INSERT INTO genres (name, description, created_at, updated_at) VALUES
('Rock', 'A genre of popular music that originated as "rock and roll" in the United States.', NOW(), NOW()),
('Jazz', 'A music genre that originated in the African-American communities of New Orleans.', NOW(), NOW()),
('Classical', 'Art music produced or rooted in the traditions of Western culture.', NOW(), NOW()),
('Pop', 'A popular music genre that combines elements of rock, soul, and dance.', NOW(), NOW()),
('Hip Hop', 'A music genre that developed from African American and Latino communities in the United States.', NOW(), NOW()),
('Country', 'A genre of popular music that originated in the United States and Canada.', NOW(), NOW());

-- Insertion des artistes
INSERT INTO artists (name, created_at, updated_at) VALUES
('Artist One', NOW(), NOW()),
('Artist Two', NOW(), NOW()),
('Artist Three', NOW(), NOW()),
('Artist Four', NOW(), NOW());

-- Insertion des albums
INSERT INTO albums (title, artist_id, release_date, created_at, updated_at) VALUES
('Album One', 1, '2023-01-01 00:00:00', NOW(), NOW()),
('Album Two', 2, '2023-01-02 00:00:00', NOW(), NOW()),
('Album Three', 3, '2023-01-03 00:00:00', NOW(), NOW()),
('Album Four', 4, '2023-01-04 00:00:00', NOW(), NOW());

-- Insertion de la musique
INSERT INTO music (title, duration, play_count, release_date, created_at, updated_at, file_path) VALUES
('Song One', 210, 100, '2023-01-01 00:00:00', NOW(), NOW(), '/path/to/song1'),
('Song Two', 180, 200, '2023-01-02 00:00:00', NOW(), NOW(), '/path/to/song2'),
('Song Three', 240, 150, '2023-01-03 00:00:00', NOW(), NOW(), '/path/to/song3'),
('Song Four', 220, 180, '2023-01-04 00:00:00', NOW(), NOW(), '/path/to/song4');

-- Insertion des playlists
INSERT INTO playlists (title, user_id, created_at, updated_at) VALUES
('My Favorite Songs', 1, NOW(), NOW()),
('Relaxing Vibes', 1, NOW(), NOW()),
('Party Hits', 2, NOW(), NOW()),
('Late Night Chill', 2, NOW(), NOW());

-- Lien entre musique et albums
INSERT INTO album_music (album_id, music_id) VALUES
(1, 1), -- 'Song One' is in 'Album One'
(2, 2), -- 'Song Two' is in 'Album Two'
(3, 3), -- 'Song Three' is in 'Album Three'
(4, 4); -- 'Song Four' is in 'Album Four'

-- Lien entre musique et artistes
INSERT INTO artist_music (artist_id, music_id) VALUES
(1, 1), -- 'Song One' is by 'Artist One'
(2, 2), -- 'Song Two' is by 'Artist Two'
(3, 3), -- 'Song Three' is by 'Artist Three'
(4, 4); -- 'Song Four' is by 'Artist Four'

-- Lien entre musique et genres
INSERT INTO genre_music (genre_id, music_id) VALUES
(1, 1), -- 'Song One' is of genre 'Rock'
(2, 2), -- 'Song Two' is of genre 'Jazz'
(3, 3), -- 'Song Three' is of genre 'Pop'
(6, 4); -- 'Song Four' is of genre 'Country'

-- Lien entre playlists et musique
INSERT INTO music_playlist (music_id, playlist_id) VALUES
(1, 1), -- 'Song One' is in the playlist 'My Favorite Songs'
(2, 2), -- 'Song Two' is in the playlist 'Relaxing Vibes'
(3, 3), -- 'Song Three' is in the playlist 'Party Hits'
(4, 4); -- 'Song Four' is in the playlist 'Late Night Chill'

-- Musique aimée par les utilisateurs
INSERT INTO music_user (music_id, user_id) VALUES
(1, 1), -- 'John Doe' likes 'Song One'
(2, 1), -- 'John Doe' likes 'Song Two'
(3, 2), -- 'Jane Smith' likes 'Song Three'
(4, 2); -- 'Jane Smith' likes 'Song Four'

-- Insertion des abonnements
INSERT INTO subscriptions (name, price) VALUES
('free', 0), ('standard', 9.99), ('premium', 14.99), ('lifetime', 99.99);

-- Lien entre utilisateurs et abonnements
INSERT INTO subscription_user (user_id, subscription_id, start_date, end_date) VALUES
(1, 3, '2024-01-01 00:00:00', '2025-01-01 00:00:00'); -- 'John Doe' has a 'premium' subscription
