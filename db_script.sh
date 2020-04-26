#!/bin/bash
#set -e
#switch user to postgres
#sudo su postgres
su postgres && pg_ctl init

#create the covid19 database
createdb --username=postgres --owner=postgres covid19

#hopefully importing the database when creating the image ;)
psql --user=postgres --dbname=covid19  -f /home/covid19_24042020.sql