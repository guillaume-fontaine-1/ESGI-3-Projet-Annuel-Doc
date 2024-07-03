-- Modification de la table Playlists
ALTER TABLE Playlists
CHANGE COLUMN creation_date created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Renomme creation_date en created_at
ADD COLUMN updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;  -- Ajoute updated_at

-- Modification de la table Music
ALTER TABLE Music
ADD COLUMN created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Ajoute created_at
ADD COLUMN updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;  -- Ajoute updated_at

-- Modification de la table Albums
ALTER TABLE Albums
CHANGE COLUMN creation_date created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Renomme creation_date en created_at
ADD COLUMN updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;  -- Ajoute updated_at

-- Modification de la table Genres
ALTER TABLE Genres
ADD COLUMN created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Ajoute created_at
ADD COLUMN updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;  -- Ajoute updated_at

-- Modification de la table Artists
ALTER TABLE Artists
ADD COLUMN created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Ajoute created_at
ADD COLUMN updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;  -- Ajoute updated_at

-- Modification de la table Subscriptions
ALTER TABLE Subscriptions
ADD COLUMN price DECIMAL(10, 2) NOT NULL;

