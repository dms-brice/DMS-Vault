# PONTS — DMS ↔ Prospects

Liaisons entre **DMS Obsidian** (base de connaissance système) et **Prospects Obsidian Arborescence** (application commerciale).

## Flux : DMS → Prospects

### Ce qui vit dans DMS et que Prospects utilise

#### 00-CONTEXTE
Prospects référence :
- **Univers DMS** → `/Prospects/PROSPECTS/Univers/`
- **Positionnement** → Arguments de vente dans `/Prospects/PROSPECTS/Angles/`
- **Audience insight** → Brief pour les Angles

#### 01-MOTEUR DMS
Prospects utilise :
- **Processus commercial** → Guide prospection
- **Processus création** → Pour briefs aux designers (images, univers)

#### 02-OUTILS
**Vivants ici, référencés dans Prospects** :
- `produire/templates/` → Brief prospect, devis, proposal
- `produire/guidelines/` → Tonalité, palette (utilisés dans Images & Angles)
- `produire/ressources/` → Palettes, références visuelles

#### 03-Contenu & Communication
Prospects référence :
- `communiquer/messaging/` → Copies par segment
- `communiquer/arguments/` → Arguments par cas client

#### 04-Prospection & Vente
**Superposition potentielle** :
- `vendre/cas-clients/` → Peut vivre ici OU dans Prospects (voir décision plus bas)
- `vendre/segments/` → Suisse / Réunion segmentation → mappe vers SUISSE / la Réunion dans Prospects

---

## Architecture de liaison

### Suisse (Priority)
```
DMS/04-Prospection & Vente/vendre/Suisse/
              ↓ (référence)
Prospects/PROSPECTS/SUISSE/
```

### Réunion (Cashflow)
```
DMS/04-Prospection & Vente/vendre/Réunion/
              ↓ (référence)
Prospects/PROSPECTS/la Réunion/
```

### Contenu & Univers
```
DMS/02-OUTILS/produire/guidelines/
              ↓ (référence)
Prospects/PROSPECTS/Univers/
Prospects/PROSPECTS/Images/
```

### Arguments & Angles
```
DMS/03-Contenu & Communication/communiquer/arguments/
              ↓ (référence)
Prospects/PROSPECTS/Angles/
```

---

## Usages (Prospects uniquement)

Cas d'usage client-spécifiques. Vit **seulement** dans Prospects (trop volatile pour DMS).

```
Prospects/PROSPECTS/Usages/
├── Cas client 1/
├── Cas client 2/
└── [adapté au prospect, pas générique]
```

---

## Comment référencer

### Depuis Prospects vers DMS
```
Voir argument core : [[DMS Obsidian/03-Contenu & Communication/communiquer/arguments/Exploration botanique]]
Utiliser template : [[DMS Obsidian/02-OUTILS/produire/templates/Brief prospect]]
```

### Depuis DMS vers Prospects
```
Cas en production : [[Prospects Obsidian Arborescence/PROSPECTS/SUISSE/Cas X]]
Client live : [[Prospects Obsidian Arborescence/PROSPECTS/Usages/Client Y]]
```

---

## Rule : Où vit quoi ?

| Contenu | Où ? | Raison |
|---------|------|--------|
| Arguments génériques | DMS 03- | Réutilisable, évolutif |
| Arguments client-specific | Prospects ANGLES | Client-contextuel |
| Templates | DMS 02- | Vivants, version unique |
| Univers/Guidelines | DMS 02- | Source de truth, stable |
| Cas client en cours | Prospects USAGES | Dynamic, spécifique |
| Contacts/Pipeline | Prospects SUISSE/RP | Volatile, commercial |
| Positionnement marché | DMS 00- | Stratégique, stable |

---

## Sync manuelle

Chaque **dimanche soir** (ou hebdo) :
- DMS vault : `git add . && git commit && git push` (GitHub)
- Prospects vault : Copie locale mise à jour (pas encore sur Git)

À terme : Prospects vault sur Git aussi.

---

*Dernière mise à jour : Mai 2026*
