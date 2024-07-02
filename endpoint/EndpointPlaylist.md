### Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


## 1. Obtenir toutes les playlists
**Endpoint:** `GET /playlists`

**Description:** Récupère la liste de toutes les playlists.

**Exemple de requête:**
```
GET /playlists
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Mes chansons préférées",
        "creator_id": 1,
        "creation_date": "2023-01-01T00:00:00Z"
    },
    {
        "id": 2,
        "title": "Ambiance détente",
        "creator_id": 1,
        "creation_date": "2023-01-02T00:00:00Z"
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne la liste des playlists.

## 2. Obtenir une playlist par ID
**Endpoint:** `GET /playlists/{id}`

**Description:** Récupère une playlist spécifique par son ID.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de la playlist à récupérer.

**Exemple de requête:**
```
GET /playlists/1
```

**Réponse (succès):**
```json
{
    "id": 1,
    "title": "Mes chansons préférées",
    "creator_id": 1,
    "creation_date": "2023-01-01T00:00:00Z"
}
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les détails de la playlist demandée.
- `404 Not Found` : Si la playlist avec l'ID spécifié n'existe pas.

## 3. Créer une nouvelle playlist
**Endpoint:** `POST /playlists`

**Description:** Crée une nouvelle playlist.

**Corps de la requête:**
    ```json
    {
        "title": "string",
        "creator_id": "int",
        "creation_date": "datetime"
    }
    ```

**Exemple de requête:**
```
POST /playlists
Content-Type: application/json

{
    "title": "Nouvelle Playlist",
    "creator_id": 1,
    "creation_date": "2024-07-02T00:00:00Z"
}
```

**Réponse (succès):**
```json
{
    "id": 3,
    "title": "Nouvelle Playlist",
    "creator_id": 1,
    "creation_date": "2024-07-02T00:00:00Z"
}
```

**Codes de réponse possibles:**
- `201 Created` : La playlist a été créée avec succès.
- `400 Bad Request` : Si les données de la requête sont invalides.

## 4. Mettre à jour une playlist par ID
**Endpoint:** `PUT /playlists/{id}`

**Description:** Met à jour une playlist existante par son ID.

**Corps de la requête:**
    ```json
    {
        "title": "string",
        "creator_id": "int",
        "creation_date": "datetime"
    }
    ```

**Exemple de requête:**
```
PUT /playlists/1
Content-Type: application/json

{
    "title": "Playlist Mise à Jour",
    "creator_id": 1,
    "creation_date": "2024-07-02T00:00:00Z"
}
```

**Réponse (succès):**
```json
{
    "id": 1,
    "title": "Playlist Mise à Jour",
    "creator_id": 1,
    "creation_date": "2024-07-02T00:00:00Z"
}
```

**Codes de réponse possibles:**
- `200 OK` : La playlist a été mise à jour avec succès.
- `400 Bad Request` : Si les données de la requête sont invalides.
- `404 Not Found` : Si la playlist avec l'ID spécifié n'existe pas.

## 5. Supprimer une playlist par ID
**Endpoint:** `DELETE /playlists/{id}`

**Description:** Supprime une playlist existante par son ID.

**Exemple de requête:**
```
DELETE /playlists/1
```

**Réponse (succès):**
```json
{
    "message": "Playlist supprimée avec succès."
}
```

**Codes de réponse possibles:**
- `200 OK` : La playlist a été supprimée avec succès.
- `404 Not Found` : Si la playlist avec l'ID spécifié n'existe pas.

## 6. Ajouter une musique à une playlist
**Endpoint:** `POST /playlists/{id}/music`

**Description:** Ajoute une musique à une playlist existante.
**Corps de la requête:**
    ```json
    {
        "music_id": "int"
    }
    ```

**Exemple de requête:**
```
POST /playlists/1/music
Content-Type: application/json

{
    "music_id": 1
}
```

**Réponse (succès):**
```json
{
    "message": "Musique ajoutée à la playlist avec succès."
}
```

**Codes de réponse possibles:**
- `200 OK` : La musique a été ajoutée à la playlist avec succès.
- `400 Bad Request` : Si les données de la requête sont invalides.
- `404 Not Found` : Si la playlist ou la musique avec l'ID spécifié n'existe pas.

## 7. Retirer une musique d'une playlist
**Endpoint:** `DELETE /playlists/{id}/music/{music_id}`

**Description:** Retire une musique d'une playlist existante.

**Exemple de requête:**
```
DELETE /playlists/1/music/1
```

**Réponse (succès):**
```json
{
    "message": "Musique retirée de la playlist avec succès."
}
```

**Codes de réponse possibles:**
- `200 OK` : La musique a été retirée de la playlist avec succès.
- `404 Not Found` : Si la playlist ou la musique avec l'ID spécifié n'existe pas.