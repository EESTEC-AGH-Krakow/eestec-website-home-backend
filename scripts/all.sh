#!/bin/bash



# Skrypt robi backup strony
echo "Creating backup..."
./backups.sh

# Skrypt instaluje wp cli ( najnowsza wersje ), a jeśli jest zainstalowana to instaluje nam konkretną którą podamy jako argument
echo "WP check..."
./wp_check.sh

# Skrypt instaluje wordpressa
echo "Intalling wordpres..."
./installing_wordpress.sh

# Instalowanie pluginów
echo "Installing plugins"
./plugins.sh
