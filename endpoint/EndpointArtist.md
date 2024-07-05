# Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


## 1. Obtenir tous les artistes paginés
**Endpoint:** `GET /artists`

**Description:** Récupère la liste des artistes avec pagination.

**Paramètres de la requête:**
- `page` (query) : Optionnel. Numéro de page pour la pagination.

**Exemple de requête:**
```
GET /artists?page=2
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "name": "Artiste Un"
    },
    {
        "id": 2,
        "name": "Artiste Deux"
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne la liste des artistes.
- `400 Bad Request` : Si le paramètre `page` est incorrect.

## 2. Obtenir tous les artistes sans pagination
**Endpoint:** `GET /artists/all`

**Description:** Récupère tous les artistes sans pagination.

**Exemple de requête:**
```
GET /artists/all
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "name": "Artiste Un"
    },
    {
        "id": 2,
        "name": "Artiste Deux"
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne tous les artistes.

## 3. Obtenir un artiste par ID
**Endpoint:** `GET /artists/{id}`

**Description:** Récupère un artiste spécifique par son ID.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de l'artiste à récupérer.

**Exemple de requête:**
```
GET /artists/1
```

**Réponse (succès):**
```json
{
    "id": 1,
    "name": "Artiste Un"
}
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les détails de l'artiste demandé.
- `404 Not Found` : Si l'artiste avec l'ID spécifié n'existe pas.

## 4. Obtenir la musique d'un artiste
**Endpoint:** `GET /artists/{id}/music`

**Description:** Récupère les musiques associées à un artiste spécifique.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de l'artiste dont on veut récupérer les musiques.

**Exemple de requête:**
```
GET /artists/1/music
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
        "updated_at": "2023-01-01T00:00:00Z",
        "file_path": "path/to/chanson_un.mp3"
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les musiques de l'artiste.
- `404 Not Found` : Si l'artiste avec l'ID spécifié n'existe pas.
