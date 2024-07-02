-- Table for Roles
CREATE TABLE Roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Table for Users
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    registration_date DATETIME NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES Roles(id)
);

-- Table for Genres
CREATE TABLE Genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Table for Artists
CREATE TABLE Artists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Table for Albums
CREATE TABLE Albums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    creation_date DATETIME NOT NULL
);

-- Table for Music
CREATE TABLE Music (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_date DATETIME,
    duration INT,
    likes INT DEFAULT 0,
    play_count INT DEFAULT 0
);

-- Table for Playlists
CREATE TABLE Playlists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    creator_id INT,
    creation_date DATETIME NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES Users(id)
);

-- Table for linking Music and Genres
CREATE TABLE Music_Genres (
    music_id INT,
    genre_id INT,
    PRIMARY KEY (music_id, genre_id),
    FOREIGN KEY (music_id) REFERENCES Music(id),
    FOREIGN KEY (genre_id) REFERENCES Genres(id)
);

-- Table for linking Music and Artists
CREATE TABLE Music_Artists (
    music_id INT,
    artist_id INT,
    PRIMARY KEY (music_id, artist_id),
    FOREIGN KEY (music_id) REFERENCES Music(id),
    FOREIGN KEY (artist_id) REFERENCES Artists(id)
);

-- Table for linking Music and Albums
CREATE TABLE Music_Albums (
    music_id INT,
    album_id INT,
    PRIMARY KEY (music_id, album_id),
    FOREIGN KEY (music_id) REFERENCES Music(id),
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

-- Table for linking Playlists and Music
CREATE TABLE Playlist_Music (
    playlist_id INT,
    music_id INT,
    PRIMARY KEY (playlist_id, music_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(id),
    FOREIGN KEY (music_id) REFERENCES Music(id)
);

-- Table for linking Users and Liked Music
CREATE TABLE User_Liked_Music (
    user_id INT,
    music_id INT,
    PRIMARY KEY (user_id, music_id),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (music_id) REFERENCES Music(id)
);

-- Table for Subscriptions
CREATE TABLE Subscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Table for linking Users and Subscriptions
CREATE TABLE User_Subscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    subscription_id INT,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (subscription_id) REFERENCES Subscriptions(id)
);
