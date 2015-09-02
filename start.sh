#!/bin/bash
if [ -f /.dockerinit ]; then
    echo "Preparing auto-start for gitrob"
else
    echo "This script is meant to be run inside a docker container. Use 'docker-compose up' instead.";
fi
source .env
touch ~/.gitrobrc
ruby $APP_HOME/preprocess_rc.rb $APP_HOME/.gitrobrc.template
# gitrob --reset-db
gitrob --threads 3000 -o $GITHUB_ORG_NAME -b 0.0.0.0 