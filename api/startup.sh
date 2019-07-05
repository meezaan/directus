#!/bin/bash

####### DIRECTUS SETUP #########
###########################################################################
###########################################################################
# Move config file to the right place.
echo "Setting up config and symlinks"
rm -rf /var/www/html
ln -sf /var/www/public /var/www/html
cp -rf /var/www/config.php /var/www/config/api.php

chown -R www-data:www-data /var/www/public/uploads
###### DIRECTUS SETUP ENDS - Don't mess with stuff below this line #########
###########################################################################
###########################################################################

source secrets

apache2-foreground
