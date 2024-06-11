FROM nginx:stable-alpine3.19-perl
COPY . /usr/share/nginx/www
EXPOSE 8000
