FROM mdillon/postgis:10-alpine
# adding the scripts to import the database 
ADD db_script.sh /tmp/db_script.sh
RUN chmod +x /tmp/db_script.sh
ADD covid19_24042020.sql /tmp/covid19_24042020.sql
ENTRYPOINT sh /tmp/db_script.sh;