### Réponses des Endpoints avec Corps de Réponse en Cas de Succès

#### 1. Obtenir un utilisateur par ID
**Endpoint:** `GET /users/{id}`

- **Si vous êtes l'utilisateur concerné et connecté :**
  ```json
  {
      "id": 1,
      "name": "John Doe",
      "registration_date": "2023-01-01T00:00:00Z",
      "role": {
          "id": 1,
          "name": "MUSIC_LOVER"
      }
  }
  ```

- **Si vous n'êtes pas l'utilisateur concerné ou non connecté :**
  ```json
  {
      "id": 1,
      "name": "John Doe"
  }
  ```

#### 2. Créer un nouvel utilisateur
**Endpoint:** `POST /users`
**Corps de la requête:**
```json
{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "password123",
    "role_id": 1
}
```
**Corps de la réponse (succès):**
```json
{
    "id": 1,
    "name": "John Doe",
    "email": "john.doe@example.com",
    "registration_date": "2023-01-01T00:00:00Z",
    "role": {
        "id": 1,
        "name": "MUSIC_LOVER"
    }
}
```

#### 3. Mettre à jour un utilisateur par ID
**Endpoint:** `PUT /users/{id}`
**Corps de la requête:**
```json
{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "newpassword123",
    "role_id": 1
}
```
**Corps de la réponse (succès):**
```json
{
    "id": 1,
    "name": "John Doe",
    "email": "john.doe@example.com",
    "registration_date": "2023-01-01T00:00:00Z",
    "role": {
        "id": 1,
        "name": "MUSIC_LOVER"
    }
}
```

#### 4. Supprimer un utilisateur par ID
**Endpoint:** `DELETE /users/{id}`
**Corps de la réponse (succès):**
```json
{
    "message": "Utilisateur supprimé avec succès"
}
```

#### 5. Obtenir les playlists de l'utilisateur
**Endpoint:** `GET /users/{id}/playlists`
**Paramètres de la requête:** `?page=2`
**Corps de la réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Mes chansons préférées",
        "creator": {
            "id": 1,
            "name": "John Doe"
        },
        "creation_date": "2023-01-01T00:00:00Z"
    },
    {
        "id": 2,
        "title": "Ambiance détente",
        "creator": {
            "id": 1,
            "name": "John Doe"
        },
        "creation_date": "2023-01-02T00:00:00Z"
    }
]
```

#### 6. Obtenir toutes les playlists de l'utilisateur
**Endpoint:** `GET /users/{id}/playlists/all`
**Corps de la réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Mes chansons préférées",
        "creator": {
            "id": 1,
            "name": "John Doe"
        },
        "creation_date": "2023-01-01T00:00:00Z"
    },
    {
        "id": 2,
        "title": "Ambiance détente",
        "creator": {
            "id": 1,
            "name": "John Doe"
        },
        "creation_date": "2023-01-02T00:00:00Z"
    }
]
```

#### 7. Obtenir la musique aimée par l'utilisateur
**Endpoint:** `GET /users/{id}/liked-music`
**Paramètres de la requête:** `?page=2`
**Corps de la réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Chanson Un",
        "artist": {
            "id": 1,
            "name": "Artiste Un"
        },
        "album": {
            "id": 1,
            "name": "Album Un"
        },
        "release_date": "2023-01-01T00:00:00Z",
        "duration": 210
    },
    {
        "id": 2,
        "title": "Chanson Deux",
        "artist": {
            "id": 2,
            "name": "Artiste Deux"
        },
        "album": {
            "id": 2,
            "name": "Album Deux"
        },
        "release_date": "2023-01-02T00:00:00Z",
        "duration": 180
    }
]
```

#### 8. Obtenir toute la musique aimée par l'utilisateur
**Endpoint:** `GET /users/{id}/liked-music/all`
**Corps de la réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Chanson Un",
        "artist": {
            "id": 1,
            "name": "Artiste Un"
        },
        "album": {
            "id": 1,
            "name": "Album Un"
        },
        "release_date": "2023-01-01T00:00:00Z",
        "duration": 210
    },
    {
        "id": 2,
        "title": "Chanson Deux",
        "artist": {
            "id": 2,
            "name": "Artiste Deux"
        },
        "album": {
            "id": 2,
            "name": "Album Deux"
        },
        "release_date": "2023-01-02T00:00:00Z",
        "duration": 180
    }
]
```

#### 9. Ajouter de la musique aimée à l'utilisateur
**Endpoint:** `POST /users/{id}/liked-music`
**Corps de la requête:**
```json
{
    "music_id": 1
}
```
**Corps de la réponse (succès):**
```json
{
    "message": "Musique ajoutée à la liste des favoris avec succès"
}
```

#### 10. Supprimer de la musique aimée de l'utilisateur
**Endpoint:** `DELETE /users/{id}/liked-music/{music_id}`
**Corps de la réponse (succès):**
```json
{
    "message": "Musique supprimée de la liste des favoris avec succès"
}
```
