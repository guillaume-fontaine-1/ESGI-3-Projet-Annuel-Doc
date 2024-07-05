# Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


Pour correspondre aux noms de colonnes de la base de données, voici les modifications à apporter aux corps de réponse des endpoints :

## 1. Obtenir un utilisateur par ID
**Endpoint:** `GET /users/{id}`

**Réponse (succès):**

- **Si vous êtes l'utilisateur concerné et connecté :**
  ```json
  {
      "id": 1,
      "name": "John Doe",
      "email": "john.doe@example.com",
      "email_verified_at": "2023-01-01T00:00:00Z",
      "created_at": "2023-01-01T00:00:00Z",
      "updated_at": "2023-01-01T00:00:00Z",
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

## 2. Créer un nouvel utilisateur
**Endpoint:** `POST /users`

**Réponse (succès):**
```json
{
    "id": 1,
    "name": "John Doe",
    "email": "john.doe@example.com",
    "email_verified_at": null,
    "created_at": "2023-01-01T00:00:00Z",
    "updated_at": "2023-01-01T00:00:00Z",
    "role": {
        "id": 1,
        "name": "MUSIC_LOVER"
    }
}
```

## 3. Mettre à jour un utilisateur par ID
**Endpoint:** `PUT /users/{id}`

**Réponse (succès):**
```json
{
    "id": 1,
    "name": "John Doe",
    "email": "john.doe@example.com",
    "email_verified_at": "2023-01-01T00:00:00Z",
    "created_at": "2023-01-01T00:00:00Z",
    "updated_at": "2023-01-01T00:00:00Z",
    "role": {
        "id": 1,
        "name": "MUSIC_LOVER"
    }
}
```

## 5. Obtenir les playlists de l'utilisateur
**Endpoint:** `GET /users/{id}/playlists`

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Mes chansons préférées",
        "user_id": 1,
        "created_at": "2023-01-01T00:00:00Z",
        "updated_at": "2023-01-01T00:00:00Z",
        "creator": {
            "id": 1,
            "name": "John Doe"
        }
    },
    {
        "id": 2,
        "title": "Ambiance détente",
        "user_id": 1,
        "created_at": "2023-01-02T00:00:00Z",
        "updated_at": "2023-01-02T00:00:00Z",
        "creator": {
            "id": 1,
            "name": "John Doe"
        }
    }
]
```

## 6. Obtenir toutes les playlists de l'utilisateur
**Endpoint:** `GET /users/{id}/playlists/all`

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Mes chansons préférées",
        "user_id": 1,
        "created_at": "2023-01-01T00:00:00Z",
        "updated_at": "2023-01-01T00:00:00Z",
        "creator": {
            "id": 1,
            "name": "John Doe"
        }
    },
    {
        "id": 2,
        "title": "Ambiance détente",
        "user_id": 1,
        "created_at": "2023-01-02T00:00:00Z",
        "updated_at": "2023-01-02T00:00:00Z",
        "creator": {
            "id": 1,
            "name": "John Doe"
        }
    }
]
```

## 7. Obtenir la musique aimée par l'utilisateur
**Endpoint:** `GET /users/{id}/liked-music`

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Chanson Un",
        "artist_id": 1,
        "release_date": "2023-01-01T00:00:00Z",
        "created_at": "2023-01-01T00:00:00Z",
        "updated_at": "2023-01-01T00:00:00Z",
        "artist": {
            "id": 1,
            "name": "Artiste Un"
        }
    },
    {
        "id": 2,
        "title": "Chanson Deux",
        "artist_id": 2,
        "release_date": "2023-01-02T00:00:00Z",
        "created_at": "2023-01-02T00:00:00Z",
        "updated_at": "2023-01-02T00:00:00Z",
        "artist": {
            "id": 2,
            "name": "Artiste Deux"
        }
    }
]
```

## 8. Obtenir toute la musique aimée par l'utilisateur
**Endpoint:** `GET /users/{id}/liked-music/all`

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Chanson Un",
        "artist_id": 1,
        "release_date": "2023-01-01T00:00:00Z",
        "created_at": "2023-01-01T00:00:00Z",
        "updated_at": "2023-01-01T00:00:00Z",
        "artist": {
            "id": 1,
            "name": "Artiste Un"
        }
    },
    {
        "id": 2,
        "title": "Chanson Deux",
        "artist_id": 2,
        "release_date": "2023-01-02T00:00:00Z",
        "created_at": "2023-01-02T00:00:00Z",
        "updated_at": "2023-01-02T00:00:00Z",
        "artist": {
            "id": 2,
            "name": "Artiste Deux"
        }
    }
]
```

## 9. Ajouter de la musique aimée à l'utilisateur
**Endpoint:** `POST /users/{id}/liked-music`

**Réponse (succès):**
```json
{
    "message": "Musique ajoutée à la liste des favoris avec succès"
}
```

## 10. Supprimer de la musique aimée de l'utilisateur
**Endpoint:** `DELETE /users/{id}/liked-music/{music_id}`

**Réponse (succès):**
```json
{
    "message": "Musique supprimée de la liste des favoris avec succès"
}
```
