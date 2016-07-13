#!/bin/bash

# This script MUST be run in lup1 folder

DB_HOST=db
DB_USER=postgres
DB_NAME=postgres
SQL_FILES="01_init.sql 02_init.sql populate.sql"
SQL_FILES_PATH="db-scheme"
SQL_QUERY="psql -h $DB_HOST -U $DB_USER $DB_NAME"


# wait for db to be up
while !$SQL_QUERY <<EOF
\d
EOF
do
    echo 'Waiting for db to become available'
    sleep 1
done

# Check if db already initialized
$SQL_QUERY -A <<EOF | grep -q 'rows'
select * from CREDENTIAL;
EOF


if [ $? -ne 0 ] # Database must be populated
then
    # Create DB schema and inject initial data
    for file in $SQL_FILES
    do
        $SQL_QUERY < "$SQL_FILES_PATH/$file"
    done
fi

# Run application.
mvn jetty:run
