#!/bin/bash

# Installing wordpress plugin

path_to_wordpress="/home/eestec/domains/dev.wp.eestec.pl/public_html"



wp-cli.phar plugin install polylang --path=$path_to_wordpress
wp-cli.phar plugin activate polylang --path=$path_to_wordpress

wp-cli.phar plugin install wp-api-swaggerui --path=$path_to_wordpress
wp-cli.phar plugin activate wp-api-swaggerui --path=$path_to_wordpress

wp-cli.phar plugin install classic-editor --path=$path_to_wordpress
wp-cli.phar plugin activate classic-editor --path=$path_to_wordpress

