FROM nginx
COPY src/ /usr/share/nginx/html
VOLUME src/ /usr/share/nginx/html
EXPOSE 80
