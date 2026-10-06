FROM nginx:alpine
LABEL This is an image for less vulnerable nginx
MAINTAINER name=Apsana, mail=apsana.com
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

