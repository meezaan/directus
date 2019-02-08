#!/bin/bash

####### DIRECTUS SETUP #########
###########################################################################
###########################################################################
# Move config file to the right place.
ln -sf /var/www/public /var/www/html
cp -rf config.php config/api.php

###### DIRECTUS SETUP ENDS - Don't mess with stuff below this line #########
###########################################################################
###########################################################################

apache2-foreground
