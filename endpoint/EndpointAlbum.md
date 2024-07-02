### Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


#### 1. Obtenir tous les albums paginés
**Endpoint:** `GET /albums`

**Description:** Récupère la liste des albums avec pagination.

**Paramètres de la requête:**
- `page` (query) : Optionnel. Numéro de page pour la pagination.

**Exemple de requête:**
```
GET /albums?page=2
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "title": "Album Un",
        "creation_date": "2023-01-01T00:00:00Z"
    },
    {
        "id": 2,
        "title": "Album Deux",
        "creation_date": "2023-01-02T00:00:00Z"
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne la liste des albums.
- `400 Bad Request` : Si le paramètre `page` est incorrect.

#### 2. Obtenir un album par ID
**Endpoint:** `GET /albums/{id}`

**Description:** Récupère un album spécifique par son ID.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de l'album à récupérer.

**Exemple de requête:**
```
GET /albums/1
```

**Réponse (succès):**
```json
{
    "id": 1,
    "title": "Album Un",
    "creation_date": "2023-01-01T00:00:00Z"
}
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les détails de l'album demandé.
- `404 Not Found` : Si l'album avec l'ID spécifié n'existe pas.

#### 3. Obtenir la musique d'un album
**Endpoint:** `GET /albums/{id}/music`

**Description:** Récupère les musiques associées à un album spécifique.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de l'album dont on veut récupérer les musiques.

**Exemple de requête:**
  ```
  GET /albums/1/music
  ```

  **Réponse (succès):**
  ```json
  [
      {
          "id": 1,
          "title": "Chanson Un",
          "release_date": "2023-01-01T00:00:00Z",
          "duration": 210,
          "likes": 100,
          "play_count": 1000,
          "file_path": "path/to/chanson_un.mp3"
      }
  ]
  ```

  **Codes de réponse possibles:**
  - `200 OK` : La requête a réussi et retourne les musiques de l'album.
  - `404 Not Found` : Si l'album avec l'ID spécifié n'existe pas.