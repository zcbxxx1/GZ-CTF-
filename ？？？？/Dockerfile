FROM php:7.2-apache

COPY ./src /var/www/html

RUN chmod -R 755 /var/www/html \
    && mkdir /init-scripts \
    && mv /var/www/html/start.sh /init-scripts/ \
    && chmod +x /init-scripts/start.sh

ENTRYPOINT ["/init-scripts/start.sh"]
