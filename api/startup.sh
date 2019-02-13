#!/bin/bash

####### DIRECTUS SETUP #########
###########################################################################
###########################################################################
# Move config file to the right place.
rm -rf /var/www/html
ln -sf /var/www/public /var/www/html
cp -rf /var/www/config.php /var/www/config/api.php

###### DIRECTUS SETUP ENDS - Don't mess with stuff below this line #########
###########################################################################
###########################################################################

apache2-foreground
