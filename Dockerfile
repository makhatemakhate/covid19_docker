FROM mdillon/postgis:10-alpine
# adding the scripts to import the database 
ADD db_script.sh /home/db_script.sh
RUN chmod +x /home/db_script.sh
ADD covid19_24042020.sql /home/covid19_24042020.sql
#ENTRYPOINT sh /home/db_script.sh;