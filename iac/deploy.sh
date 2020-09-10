#!/bin/bash

LOCATION=$1

printf "sync files and remove unnecessary ...\n"
rsync -Pavh -e 'ssh -i ./.deploy_key' ./scripts "$USERNAME"@"$SERVER_ADDRESS":~"$LOCATION" --delete-after
ssh -i ./.deploy_key "$USERNAME"@"$SERVER_ADDRESS" bash ~"$LOCATION"/scripts/all.sh ~"$LOCATION"/scripts

printf "\ndone"
