### Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


## 1. Obtenir un utilisateur par ID
**Endpoint:** `GET /users/{id}`

**Description:**
Cet endpoint permet de récupérer les informations d'un utilisateur spécifique.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.

**Exemple de requête:**

```
GET /users/1
```

**Réponse (succès):**

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

**Codes de réponse possibles:**

- `200 OK` : La requête a réussi.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 2. Créer un nouvel utilisateur
**Endpoint:** `POST /users`

**Description:**
Cet endpoint permet de créer un nouvel utilisateur.

**Corps de la requête:**
```json
{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "password123",
    "role_id": 1
}
```

**Exemple de requête:**

```
POST /users
```

**Réponse (succès):**
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

**Codes de réponse possibles:**

- `201 Created` : L'utilisateur a été créé avec succès.
- `400 Bad Request` : Les informations fournies sont invalides.

## 3. Mettre à jour un utilisateur par ID
**Endpoint:** `PUT /users/{id}`

**Description:**
Cet endpoint permet de mettre à jour les informations d'un utilisateur spécifique.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.

**Corps de la requête:**
```json
{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "newpassword123",
    "role_id": 1
}
```

**Exemple de requête:**

```
PUT /users/1
```

**Réponse (succès):**
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

**Codes de réponse possibles:**

- `200 OK` : La requête a réussi et les informations de l'utilisateur ont été mises à jour.
- `400 Bad Request` : Les informations fournies sont invalides.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 4. Supprimer un utilisateur par ID
**Endpoint:** `DELETE /users/{id}`

**Description:**
Cet endpoint permet de supprimer un utilisateur spécifique.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.

**Exemple de requête:**

```
DELETE /users/1
```

**Réponse (succès):**
```json
{
    "message": "Utilisateur supprimé avec succès"
}
```

**Codes de réponse possibles:**

- `200 OK` : L'utilisateur a été supprimé avec succès.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 5. Obtenir les playlists de l'utilisateur
**Endpoint:** `GET /users/{id}/playlists`

**Description:**
Cet endpoint permet de récupérer les playlists d'un utilisateur spécifique.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.
- `page` (query) : (optionnel) Numéro de page pour la pagination des résultats. Doit être un nombre entier positif.

**Exemple de requête:**

```
GET /users/1/playlists?page=2
```

**Réponse (succès):**
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

**Codes de réponse possibles:**

- `200 OK` : La requête a réussi et les playlists sont retournées.
- `400 Bad Request` : Le paramètre `page` n'est pas un nombre entier valide.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 6. Obtenir toutes les playlists de l'utilisateur
**Endpoint:** `GET /users/{id}/playlists/all`

**Description:**
Cet endpoint permet de récupérer toutes les playlists d'un utilisateur spécifique sans pagination.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.

**Exemple de requête:**

```
GET /users/1/playlists/all
```

**Réponse (succès):**
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

**Codes de réponse possibles:**

- `200 OK` : La requête a réussi et toutes les playlists sont retournées.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 7. Obtenir la musique aimée par l'utilisateur
**Endpoint:** `GET /users/{id}/liked-music`

**Description:**
Cet endpoint permet de récupérer la musique aimée par un utilisateur spécifique.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.
- `page` (query) : (optionnel) Numéro de page pour la pagination des résultats. Doit être un nombre entier positif.

**Exemple de requête:**

```
GET /users/1/liked-music?page=2
```

**Réponse (succès):**
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

**Codes de réponse possibles:**

- `200 OK` : La requête a réussi et la musique aimée est retournée.
- `400 Bad Request` : Le paramètre `page` n'est pas un nombre entier valide.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 8. Obtenir toute la musique aimée par l'utilisateur
**Endpoint:** `GET /users/{id}/liked-music/all`

**Description:**
Cet endpoint permet de récupérer toute la musique aimée par un utilisateur spécifique sans pagination.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.

**Exemple de requête:**

```
GET /users/1/liked-music/all
```

**Réponse (succès):**
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
            "name

": "Album Un"
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

**Codes de réponse possibles:**

- `200 OK` : La requête a réussi et toute la musique aimée est retournée.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 9. Ajouter de la musique aimée à l'utilisateur
**Endpoint:** `POST /users/{id}/liked-music`

**Description:**
Cet endpoint permet d'ajouter une musique à la liste des favoris d'un utilisateur.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.

**Corps de la requête:**
```json
{
    "music_id": 1
}
```

**Exemple de requête:**

```
POST /users/1/liked-music
```

**Réponse (succès):**
```json
{
    "message": "Musique ajoutée à la liste des favoris avec succès"
}
```

**Codes de réponse possibles:**

- `200 OK` : La musique a été ajoutée avec succès à la liste des favoris.
- `400 Bad Request` : Les informations fournies sont invalides ou la musique n'existe pas.
- `404 Not Found` : L'utilisateur avec l'identifiant spécifié n'existe pas.

## 10. Supprimer de la musique aimée de l'utilisateur
**Endpoint:** `DELETE /users/{id}/liked-music/{music_id}`

**Description:**
Cet endpoint permet de supprimer une musique de la liste des favoris d'un utilisateur.

**Paramètres:**

- `id` (path) : Identifiant unique de l'utilisateur.
- `music_id` (path) : Identifiant unique de la musique.

**Exemple de requête:**

```
DELETE /users/1/liked-music/1
```

**Réponse (succès):**
```json
{
    "message": "Musique supprimée de la liste des favoris avec succès"
}
```

**Codes de réponse possibles:**

- `200 OK` : La musique a été supprimée avec succès de la liste des favoris.
- `404 Not Found` : L'utilisateur ou la musique avec l'identifiant spécifié n'existe pas.