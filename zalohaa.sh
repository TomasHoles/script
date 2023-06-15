#!/bin/bash

SOURCE_DIR="letc"
BACKUP_DIR="zaloha"
TIMESTAMP=$(date +%Y%M%d%H%M%S)

if [ ! -d "$BACKUP_DIR" ]; then
echo "Cílovy adresar neexistuje. vytvarim adresar $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"
echo "adresar $BACKUP_DIR byl uspesne vytvoren"
fi

tar -czvf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
echo "Zaloha byla uspesne vytvorena."
else
 echo "Pri vytvareni zalohy doslo k chybe."
fi 
