#!/bin/bash

# Skrypt instaluje od nowa wordpressa

path_to_wordpress="/home/eestec/domains/dev.wp.eestec.pl/public_html"

rm -rf $path_to_wordpress/*
wp core download --path=$path_to_wordpress --force
wp config create --path=$path_to_wordpress --dbname=m1543_dev_wp --dbuser=m1543_dev_wp --dbpass=Admin123 --dbhost=mysql3.mydevil.net --dbprefix=dev_wp
wp core install --path=$path_to_wordpress --url=dev.wp.eestec.pl  --title=eestec_dev --admin_user=admin --admin_password=123 --admin_email=itt@eestec.pl
last_backup=$(ls -l ~/domains/dev.wp.eestec.pl/backups | tail -n1 | awk -F' ' '{print $9}')
rm -rf $path_to_wordpress/wp-content/uploads 
tar -xvzf ~/domains/dev.wp.eestec.pl/backups/$last_backup --strip-components 6 -C $path_to_wordpress/wp-content



