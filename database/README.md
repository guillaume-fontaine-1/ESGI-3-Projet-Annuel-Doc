# Projet Streaming Database

Ce dossier contient tous les fichiers nécessaires pour créer et modifier la base de données de l'application de streaming, ainsi que des données factices pour le développement et les tests.

## Fichiers

1. **projet-streaming.sql**
    - Contenu : Ce fichier contient le script SQL pour la création de la base de données initiale. Il inclut toutes les tables nécessaires pour le fonctionnement de l'application de streaming, telles que `Roles`, `Users`, `Genres`, `Artists`, `Albums`, `Music`, `Playlists`, et les tables de liaison associées.
    - Usage : Exécutez ce fichier pour créer la structure de la base de données initiale.

2. **alter-1.sql**
    - Contenu : Ce fichier contient le script SQL pour apporter des modifications à la base de données initiale. Il ajoute une colonne `file_path` à la table `Music` pour stocker le chemin ou l'URL du fichier musique associé.
    - Usage : Exécutez ce fichier après avoir créé la base de données initiale pour appliquer les modifications nécessaires.

3. **alter-2.sql**
    - Contenu : Ce fichier contient le script SQL pour apporter des modifications supplémentaires à la base de données. Il ajoute des colonnes `created_at` et `updated_at` aux tables `Music`, `Genres`, et `Artists`, renomme la colonne `creation_date` en `created_at` dans les tables `Playlists` et `Albums`, et ajoute une colonne `price` à la table `Subscriptions`.
    - Usage : Exécutez ce fichier après avoir appliqué les modifications du fichier `alter-1.sql` pour ajouter les nouvelles colonnes et mettre à jour la structure des tables.

4. **fake-data.sql**
    - Contenu : Ce fichier contient des données factices pour le développement et les tests. Il insère des enregistrements dans les tables de la base de données pour permettre aux développeurs de travailler avec des données réalistes.
    - Usage : Exécutez ce fichier après avoir créé et modifié la base de données pour peupler les tables avec des données factices.

## Instructions

1. **Création de la base de données initiale**
    ```sh
    mysql -u [username] -p [database_name] < projet-streaming.sql
    ```

2. **Application des modifications**
    ```sh
    mysql -u [username] -p [database_name] < alter-1.sql
    mysql -u [username] -p [database_name] < alter-2.sql
    ```

3. **Insertion des données factices**
    ```sh
    mysql -u [username] -p [database_name] < fake-data.sql
    ```

Remplacez `[username]` par votre nom d'utilisateur MySQL et `[database_name]` par le nom de votre base de données.

## Remarques

- Assurez-vous de créer des sauvegardes de votre base de données avant d'exécuter les scripts de modification ou d'insertion de données.
- Les scripts SQL doivent être exécutés dans l'ordre mentionné pour éviter les erreurs.

