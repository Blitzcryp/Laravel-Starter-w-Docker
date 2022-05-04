FROM composer:2

ENV COMPOSERUSER=laravel
ENV COMPOSERROUP=laravel

RUN adduser -g ${COMPOSERROUP} -s /bin/sh -D ${COMPOSERUSER}