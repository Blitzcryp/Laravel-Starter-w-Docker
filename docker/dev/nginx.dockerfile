FROM nginx:stable-alpine

ENV NGINXGROUP=laravel
ENV NGINXUSER=laravel

RUN mkdir -p /var/www/html/public

ADD ../../nginx/default.conf /etc/nginx/conf.d/default.conf

RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf

RUN adduser -g ${NGINXGROUP} -s /bin/sh -D ${NGINXUSER}