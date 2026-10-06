FROM mysql:5.7.25
LABEL less vulnerable
MAINTAINER me
RUN rm -rf docker-entrypoint-initdb.d/*
COPY db_backup.sql docker-entrypoint-initdb.d/db_backup.sql
RUN adduser --system -group aps
RUN chown -R aps:aps docker-entrypoint-initdb.d/db_backup.sql
ENV MYSQL_ROOT_PASSWORD=appu
ENV MYSQL_DATABASE=apsana

