#!/bin/bash

# Skrypt waliduje wprowadzone dane, usuwa jesli istnije usera db i tworzy Nam nowego

username=$1
password=$2

function valid_args() {
	if [ "$username" = "" ] || [ "$password" = "" ]
	then
		echo "You have to pass database and password arguments"
		exit
	fi
}

function add_database_and_user() {

	/usr/local/bin/expect -c '

		set prompt ":|#|\\\$"
		eval spawn devil mysql db add m1543_'$username' m1543_'$username'
		interact -o -nobuffer -re $prompt return
		send "'$password'\r"
		interact -o -nobuffer -re $prompt return
		send "'$password'\r"
		interact
	'
}

function remove_database_and_user() {
	devil mysql db del $username
	devil mysql user del $username
}


valid_args
remove_database_and_user
add_database_and_user
