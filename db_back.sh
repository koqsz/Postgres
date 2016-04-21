#!/bin/sh

# Variables
DATUM=$(date +"%Y.%m.%d %H:%M")
DATUM2=$(date +"%Y.%m.%d")
MENTES=/backup/pgsql_backup


# Db backup
echo "Some words "$DATUM"-kor" >> /var/log/dbdump/$DATUM.log
su - postgres -c "pg_dump -Upostgres -h 172.17.25.103 -E UTF-8 -F p -f $MENTES/postgres_$DATUM2.sql postgres"
echo "Finished dump "$DATUM"-kor" >> /var/log/dbdump/$DATUM.log
echo "----------------------------------------------------------" >> /var/log/dbdump/$DATUM.log
echo "                                                             " >> /var/log/dbdump/$DATUM.log
