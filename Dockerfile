FROM wyveo/nginx-php-fpm
RUN apt-get update && apt-get install -y php-sqlite3 sqlite3
RUN rm -Rf /usr/share/nginx/html
COPY sql/home-inventory.sql /tmp
RUN cat /tmp/home-inventory.sql | sqlite3 /usr/share/nginx/home-inventory.sqlite3
RUN rm /tmp/home-inventory.sql
#COPY php /usr/share/ngnix/php
COPY vendor /usr/share/nginx/vendor
#COPY public_html /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx
EXPOSE 80