# Réponses des Endpoints avec Corps de Réponse en Cas de Succès ainsi que les Codes de Réponse Possibles


## 1. Obtenir tous les abonnements
**Endpoint:** `GET /subscriptions`

**Description:** Récupère la liste de tous les abonnements disponibles.

**Exemple de requête:**
```
GET /subscriptions
```

**Réponse (succès):**
```json
[
    {
        "id": 1,
        "name": "Gratuit",
        "price": 0
    },
    {
        "id": 2,
        "name": "Standard",
        "price": 9.99
    },
    {
        "id": 3,
        "name": "Premium",
        "price": 19.99
    },
    {
        "id": 4,
        "name": "À vie",
        "price": 199.99
    }
]
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne la liste des abonnements.

## 2. Obtenir un abonnement par ID
**Endpoint:** `GET /subscriptions/{id}`

**Description:** Récupère un abonnement spécifique par son ID.

**Paramètres de la requête:**
- `id` (path) : Obligatoire. ID de l'abonnement à récupérer.

**Exemple de requête:**
```
GET /subscriptions/1
```

**Réponse (succès):**
```json
{
    "id": 1,
    "name": "Gratuit",
    "price": 0
}
```

**Codes de réponse possibles:**
- `200 OK` : La requête a réussi et retourne les détails de l'abonnement demandé.
- `404 Not Found` : Si l'abonnement avec l'ID spécifié n'existe pas.