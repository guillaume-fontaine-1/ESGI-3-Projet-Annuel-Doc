# Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


## 1. Obtenir un abonnement utilisateur par ID
**Endpoint:** `GET /user-subscriptions/{id}`

**Description:** Récupère un abonnement utilisateur spécifique par son ID.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de l'abonnement utilisateur à récupérer.

**Exemple de requête:**
```
GET /user-subscriptions/1
```

**Réponse (succès):**
```json
{
    "id": 1,
    "user_id": 1,
    "subscription_id": 1,
    "start_date": "2024-01-01T00:00:00Z",
    "end_date": "2025-01-01T00:00:00Z"
}
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les détails de l'abonnement utilisateur demandé.
- `404 Not Found` : Si l'abonnement utilisateur avec l'ID spécifié n'existe pas.

## 2. Créer un nouvel abonnement utilisateur
**Endpoint:** `POST /user-subscriptions`

**Description:** Crée un nouvel abonnement utilisateur.

**Corps de la requête:**
```json
{
    "user_id": "int",
    "subscription_id": "int",
    "start_date": "datetime",
    "end_date": "datetime"
}
```

**Exemple de requête:**
```
POST /user-subscriptions
Content-Type: application/json

{
    "user_id": 1,
    "subscription_id": 1,
    "start_date": "2024-01-01T00:00:00Z",
    "end_date": "2025-01-01T00:00:00Z"
}
```

**Réponse (succès):**
```json
{
    "id": 2,
    "user_id": 1,
    "subscription_id": 1,
    "start_date": "2024-01-01T00:00:00Z",
    "end_date": "2025-01-01T00:00:00Z"
}
```

**Codes de réponse possibles:**
- `201 Created` : L'abonnement utilisateur a été créé avec succès.
- `400 Bad Request` : Si les données de la requête sont invalides.
