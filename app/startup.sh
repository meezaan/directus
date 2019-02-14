#!/bin/bash

####### DIRECTUS SETUP #########
###########################################################################
###########################################################################
sed -i "s@##API_URL##@$API_URL@g" /var/www/config.js
sed -i "s@##API_URL2##@$API_URL@g" /var/www/config.js
sed -i "s@##API_NAME##@$API_NAME@g" /var/www/config.js
sed -i "s@##API_NAME2##@$API_NAME@g" /var/www/config.js
cp -rf /var/www/config.js /var/www/html/config.js

###### DIRECTUS SETUP ENDS - Don't mess with stuff below this line #########
###########################################################################
###########################################################################

apache2-foreground
