#!/bin/bash

sudo curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo apt update

sudo apt install php8.2 libapache2-mod-php8.2 php8.2-{fpm,cli,mysql,zip,gd,intl,mbstring,curl,xml,soap,tidy,bcmath,xmlrpc}

composer create-project drupal/recommended-project drupal

#docker exec drupal-db chmod -R 777 /var/www/html/sites/default

sudo cp ./drupal/web/sites/default/default.settings.php ./drupal/web/sites/default/settings.php
echo "Successfully copied settings.php!"

sudo chmod -R 777 ./drupal/web/sites/default
echo "Permissions granted for sites/default directory!"

docker-compose up
#docker-compose up -d