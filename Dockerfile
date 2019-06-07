FROM composer:1.8.5

RUN composer global require hirak/prestissimo

COPY docker-entrypoint.override.sh /docker-entrypoint.override.sh

WORKDIR /app

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.override.sh"]

CMD ["composer"]
