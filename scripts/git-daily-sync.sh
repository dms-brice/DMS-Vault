#!/bin/bash

# DMS Vault Daily Git Sync
# Exécution : Chaque jour à 18:00
# Effectue : git add . && git commit && git push

VAULT_PATH="$HOME/Documents/DMS obsidian"
LOG_FILE="$VAULT_PATH/.git-sync.log"

# Fonction pour logger
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# Vérifier que le vault existe
if [ ! -d "$VAULT_PATH" ]; then
    log_message "ERROR: Vault path not found: $VAULT_PATH"
    exit 1
fi

# Naviguer vers le vault
cd "$VAULT_PATH" || exit 1

# Vérifier qu'on est dans un repo git
if [ ! -d ".git" ]; then
    log_message "ERROR: Not a git repository"
    exit 1
fi

log_message "=== Starting daily sync ==="

# Vérifier s'il y a des changements
if [ -z "$(git status --porcelain)" ]; then
    log_message "No changes detected. Skipping commit."
    exit 0
fi

# Add all changes
git add . >> "$LOG_FILE" 2>&1
if [ $? -ne 0 ]; then
    log_message "ERROR: Failed to add changes"
    exit 1
fi

# Commit with timestamp
COMMIT_MSG="Auto-sync: $(date '+%Y-%m-%d %H:%M:%S') daily backup"
git commit -m "$COMMIT_MSG" >> "$LOG_FILE" 2>&1
if [ $? -ne 0 ]; then
    log_message "ERROR: Failed to commit"
    exit 1
fi

# Push to GitHub
git push >> "$LOG_FILE" 2>&1
if [ $? -ne 0 ]; then
    log_message "ERROR: Failed to push"
    exit 1
fi

log_message "✅ Sync completed successfully"
log_message ""

exit 0
