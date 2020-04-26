#!/bin/bash
set -e
#switch user to postgres
sudo su postgres

#create the covid19 database
createdb -O covid19 postgres

#hopefully importing the database when creating the image ;)
psql --user=postgres --dbname=covid19 -f /tmp/covid19_24042020.sql