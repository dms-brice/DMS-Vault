# TAGS — Structure de tagging DMS

**Utilisation** : Ajoute les tags pertinents à chaque note pour filtrer/rechercher rapidement.

Syntaxe Obsidian : `#tag_name` (sans espaces)

---

## Tags obligatoires par contexte

### Marché

- **#Suisse** → Prospection/clients Suisse (priority market)
- **#Réunion** → Prospection/clients Réunion (cashflow market)

*Chaque note commerciale DOIT avoir #Suisse OU #Réunion*

---

### Type de contenu

- **#Client** → Client en production / contractualisé
- **#ICP** → Prospect qualifié (Ideal Client Profile)
- **#Prospect** → Prospect en discussion
- **#Lead** → Lead froid / À qualifier

---

### Priorité/Urgence

- **#urgent** → À traiter cette semaine
- **#important** → Important mais pas urgent
- **#backlog** → À traiter plus tard

---

### Type de note

- **#Brief** → Brief prospect, projet
- **#Reunion** → Notes d'appel/réunion
- **#Proposition** → Devis, proposal, offre
- **#Design** → Notes design/univers
- **#Process** → Processus, workflow

---

## Exemples d'utilisation

```markdown
# Fiche Client — Acme Hotel Genève

**Tags** : #Suisse #Client #important

---

# Appel avec Restaurant X

**Tags** : #Réunion #Prospect #urgent #Reunion

---

# Brief — Boutique Zurich

**Tags** : #Suisse #ICP #Brief #Design
```

---

## Recherche par tags dans Obsidian

**Menu** → Voir les tags utilisés
**Ou** : Cmd+P → "tag" → Voir tous les tags
**Ou** : Créer un **Saved search** pour filtrer par tag

---

## Requêtes utiles (Graph View)

- `tag:#Suisse` → Tous les prospects/clients Suisse
- `tag:#ICP` → Tous les ICP qualifiés
- `tag:#urgent` → Tout ce qui est urgent
- `tag:#Client tag:#Suisse` → Tous les clients Suisse en production

---

**À jour** : Mai 2026
**Responsable** : Brice
