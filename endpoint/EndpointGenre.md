# Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles

## 1. Obtenir tous les genres
**Endpoint:** `GET /genres`

**Description:** Récupère la liste de tous les genres musicaux.

**Exemple de requête:**
```
GET /genres
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "name": "Rock",
        "description": "A genre of popular music that originated as \"rock and roll\" in the United States."
    },
    {
        "id": 2,
        "name": "Jazz",
        "description": "A music genre that originated in the African-American communities of New Orleans."
    },
    {
        "id": 3,
        "name": "Classical",
        "description": "Art music produced or rooted in the traditions of Western culture."
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne la liste des genres.

## 2. Obtenir un genre par ID
**Endpoint:** `GET /genres/{id}`

**Description:** Récupère un genre spécifique par son ID.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID du genre à récupérer.

**Exemple de requête:**
```
GET /genres/1
```

**Réponse (succès):**
```json
{
    "id": 1,
    "name": "Rock",
    "description": "A genre of popular music that originated as \"rock and roll\" in the United States."
}
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les détails du genre demandé.
- `404 Not Found` : Si le genre avec l'ID spécifié n'existe pas.

## 3. Obtenir la musique d'un genre
**Endpoint:** `GET /genres/{id}/music`

**Description:** Récupère les musiques associées à un genre spécifique.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID du genre dont on veut récupérer les musiques.

**Exemple de requête:**
```
GET /genres/1/music
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Chanson Un",
        "release_date": "2023-01-01T00:00:00Z",
        "duration": 210,
        "play_count": 1000,
        "created_at": "2023-01-01T00:00:00Z",
        "updated_at": "2023-01-01T00:00:00Z"
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les musiques du genre.
- `404 Not Found` : Si le genre avec l'ID spécifié n'existe pas.