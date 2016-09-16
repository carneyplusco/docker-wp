#!/bin/bash

DIRECTORY=/var/www/html/wp-admin

if [ ! -d "$DIRECTORY" ]; then
  curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x /bin/wp-cli.phar
  mv /bin/wp-cli.phar /usr/local/bin/wp
  cd /var/www/html && wp core download --skip-themes --skip-plugins --quiet
fi

/usr/bin/supervisord -n -c /etc/supervisord.conf
