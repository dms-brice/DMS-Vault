# CURRENT-WORK — Travail en cours

**Dernière mise à jour** : Mai 1, 2026 (13:45)
**Session** : Setup Design System + Description DMS

---

## ✅ Complété cette session

### Fichiers créés

1. **CURRENT-WORK.md** (ce fichier)
   - Source unique pour tracker le travail entre sessions
   - Permet continuité sans re-contextualisé

2. **Description-DMS.md** (`00-CONTEXTE/Description-DMS.md`)
   - Source de vérité unique pour description officielle DMS
   - Utilisé partout (design system, landing pages, prospection)
   - **Modifiable directement dans Obsidian**

3. **Design-System structure** (`02-OUTILS/Design-System/`)
   - INDEX.md (overview + lien GitHub)
   - Logos.md
   - Couleurs.md
   - Typographie.md
   - Composants.md
   - Guidelines.md

### Décisions prises

- **Séparation repos** : Assets visuels → repo GitHub séparé `dms-brice/DMS-Design-System`
- **Vault DMS** : Référence doc + liens vers assets externes
- **Single source of truth** : Description-DMS.md centralisé
- **Workflow établi** : Modifier dans Obsidian → git push synchronise tout

### Synchronisation GitHub

✅ Tous les fichiers commités et pushés sur `dms-brice/DMS-Vault`

---

## 🔄 En cours — Priorité immédiate

### Automatisation (May 1) ✅
- [x] **Git push automatisé** → Cron job configuré (chaque jour à 18h)
  - Script : `~/Documents/"DMS obsidian"/scripts/git-daily-sync.sh`
  - Crontab : `0 18 * * * ~/Documents/"DMS obsidian"/scripts/git-daily-sync.sh`
  - Logs : `.git-sync.log`

- [x] **Obsidian Templates** → RÉSOLU
  - Dossier créé à la racine : `templates/`
  - Contient : Appel-Reunion.md, Fiche-Client-Suisse.md, Note-Projet.md
  - Fonctionnel : Cmd+P → "Insérer modèle" ✓

### Design System (Claude Design)
- [ ] Créer repo GitHub `dms-brice/DMS-Design-System` (assets visuels)
- [ ] Documenter design system dans Claude Design
  - Couleurs (palette complète + codes HEX/RGB)
  - Typographie (polices, poids, hiérarchie)
  - Logos (versions, espacements)
  - Composants (boutons, cartes, formulaires)
- [ ] Exporter assets Claude Design → GitHub Design-System

---

## 📋 Backlog — Prochaines étapes

1. **Landing page Suisse** (prospection)
   - Utiliser Description-DMS.md
   - Respecter Design System créé
   - Arguments Suisse (voir `04-Prospection & Vente/vendre/Suisse/`)

2. **Outils prospection** (tableaux, formulaires)
   - Créés dans Claude Design
   - Intégrer Design System (couleurs, typo)

3. **Documentation clients** (Réunion + Suisse)
   - Adapter description par marché
   - Référencer Design System

---

## 🔗 Fichiers clés à consulter

**Source de vérité** :
- `Description-DMS.md` ← description officielle (modifie ici)
- `02-OUTILS/Design-System/INDEX.md` ← overview design system
- `CURRENT-WORK.md` ← tracking (ce fichier)

**Stratégie** :
- `DMS — PROJET MAÎTRE.md` ← framework stratégique
- `DMS — CONTEXTE COMPLET.md` ← contexte détaillé

**Prospection** :
- `04-Prospection & Vente/vendre/Suisse/INDEX.md`
- `04-Prospection & Vente/vendre/Réunion/INDEX.md`

---

## 💡 Workflow établi

**Modifier contenu** :
1. Ouvrir fichier dans Obsidian
2. Éditer le contenu
3. Cmd+S (ou auto-save)

**Synchroniser GitHub** :
```bash
cd ~/Documents/"DMS obsidian"
git add .
git commit -m "Update: [description]"
git push
```

---

## 📝 Notes pour continuité

- **Obsidian** doit être ouvert sur `DMS obsidian` vault
- **GitHub sync** = nécessaire après modifications (git push)
- **Description-DMS.md** = point d'entrée pour toute description DMS
- **Design-System** structure = extensible (ajouter fichiers au besoin)
