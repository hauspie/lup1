#!/bin/bash

# This script MUST be run in lup1 folder

DB_HOST=db
DB_USER=postgres
DB_NAME=postgres
SQL_FILES="01_init.sql 02_init.sql"
SQL_FILES_PATH="db-scheme"
SQL_QUERY="psql -h $DB_HOST -U $DB_USER $DB_NAME"


# Check if db already initialized
$SQL_QUERY -A <<EOF | grep -q '0 rows'
select * from CREDENTIAL;
EOF


if [ $? -eq 0 ] # Database must be populated
then
    for file in $SQL_FILES
    do
        $SQL_QUERY < "$SQL_FILES_PATH/$file"
    done
fi

# Run application.
mvn jetty:run
