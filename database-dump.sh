#!/bin/bash

DATE=$(date +"%d-%m-%Y-%H-%M-%S")
FILE="dump/dump_$DATE.sql"

echo "Start performing database dump..."

docker-compose exec db sh -c 'exec mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"' > $FILE

#Remove first line in .sql dump file 
tail -n +2 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"