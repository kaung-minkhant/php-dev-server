#!/bin/bash

if [ ! -f "./app/composer.json" ]; then
  echo "composer.json file does not exit"
  exit 1
fi

. ./get-interpreter.sh

. ./get-args.sh

docker ps | grep $interpreter | awk '{ print $1; }' | xargs -I {} docker exec -u $(whoami) -i {} composer install