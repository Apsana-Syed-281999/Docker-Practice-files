FROM httpd:2.4-alpine
LABEL This is less vulnerable httpd image
MAINTAINER name=Apsana, mail=apsana.com
EXPOSE 80
RUN rm -rf /usr/local/apache2/htdocs/*
COPY index.html /usr/local/apache2/htdocs/
RUN adduser -D aps
RUN chown -R aps:aps /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]

