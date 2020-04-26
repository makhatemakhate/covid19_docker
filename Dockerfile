FROM mdillon/postgis:10-alpine
# adding the scripts to import the database 
ARG container_name
ARG bind_mount_dest
ADD db_script.sh /tmp/db_script.sh
RUN chmod a+x /tmp/db_script.sh
ADD covid19_24042020.sql /tmp/covid19_24042020.sql
ENTRYPOINT sh /tmp/covid19_24042020.sql;