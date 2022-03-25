# Crontab For Obsidian

This is a small utility for synchronising my Obsidian Vault across devices by using iCloud as my source working tree.

I had to create this as an alternative to Obsidian Git because there's been an annoying issue with Electron that makes the rendering view to halt while the git process spawns.

## How to use

First, confirm all settings in `sync-obsidian-repo.sh` are correct.

Edit your user's crontab file by running: `crontab -e`.

Paste the following line:
  - `*/5 * * * * /bin/sh /path/to/sync-obsidian-repo.sh`

Save and close the file with `:wq`
