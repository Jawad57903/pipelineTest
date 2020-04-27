FROM nginx
USER root
COPY src/ /usr/share/nginx/html
EXPOSE 80
