#!/bin/bash

LOCATION=$1

printf "run files on server ...\n"
ssh -i ./.deploy_key "$USERNAME"@"$SERVER_ADDRESS" bash ~"$LOCATION"/scripts/all.sh

printf "\ndone, new version was released, check page in the browser!"
