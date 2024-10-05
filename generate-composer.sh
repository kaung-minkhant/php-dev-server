#!/bin/bash

if [ -f "./app/composer.json" ]; then
  echo "composer.json file exists"
  exit 0
fi

. ./get-interpreter.sh

. ./get-args.sh

docker ps | grep $interpreter | awk '{ print $1; }' | xargs -I {} docker exec -u $(whoami) -i {} composer init --name sample_vendor/sample_package -n