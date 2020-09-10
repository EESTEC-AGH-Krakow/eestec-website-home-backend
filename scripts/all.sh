#!/bin/bash

LOCATION=$1

# Skrypt robi backup strony
echo "Creating backup..."
sh $LOCATION/backups.sh

# Skrypt instaluje wp cli ( najnowsza wersje ), a jeśli jest zainstalowana to instaluje nam konkretną którą podamy jako argument
echo "WP check..."
sh $LOCATION/wp_check.sh

# Skrypt instaluje wordpressa
echo "Intalling wordpres..."
sh $LOCATION/installing_wordpress.sh

# Instalowanie pluginów
echo "Installing plugins"
sh $LOCATION/plugins.sh
