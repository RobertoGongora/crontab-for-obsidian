#!/bin/sh

REPO_DIR=~/.obsidian-repo
REPO_URL=https://github.com/RobertoGongora/obsidian-repo.git
VAULT_DIR=~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Silverwing/
DATE_TIME=$(date "+%Y-%m-%d %H-%M-%S")

# Create folder if it doesnt exist
if [ ! -d "$REPO_DIR" ]; then
    git clone --bare --depth 1 "$REPO_URL" "$REPO_DIR"
fi

# Add the vault folder to the repo
git --git-dir="$REPO_DIR" --work-tree="$VAULT_DIR" add .
git --git-dir="$REPO_DIR" --work-tree="$VAULT_DIR" commit -m "Backed up vault on $DATE_TIME"
git --git-dir="$REPO_DIR" --work-tree="$VAULT_DIR" push origin main
