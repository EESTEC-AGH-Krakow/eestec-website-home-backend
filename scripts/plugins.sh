#!/bin/bash

# Installing wordpress plugin

path_to_wordpress="/home/eestec/domains/dev.wp.eestec.pl/public_html"



wp plugin install polylang --path=$path_to_wordpress
wp plugin activate polylang --path=$path_to_wordpress

wp plugin install wp-api-swaggerui --path=$path_to_wordpress
wp plugin activate wp-api-swaggerui --path=$path_to_wordpress

wp plugin install classic-editor --path=$path_to_wordpress
wp plugin activate classic-editor --path=$path_to_wordpress

