#!/bin/bash


# Skrypt instaluje konkretne WP CLI, a jeśli nie ma podanego argumentu i nie jest zainstalowany WP CLI to instaluje najnowszą wersje

version_of_wp_cli=$1

if ! command -v wp &> /dev/null # jeśli nie mamy zainstalowanego wp cli to pobiera nam z repo najnowszą wersje
then
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /home/eestec/bin/wp
else
	if [ "$version_of_wp_cli" = "" ]
	then
		echo "Podaj wersję WP CLI do której chcesz zrobić update jako argument"
	else
		wp core update --version=$version_of_wp_cli --force # podajemy argumenty
	fi
fi

