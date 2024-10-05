#!/bin/bash

if [ ! -f "./app/composer.json" ]; then
  echo "composer.json file does not exit"
  exit 1
fi

. ./get-interpreter.sh

. ./get-args.sh

if [ -z $package ]; then
  echo "--package is required"
  exit 1
fi

docker ps | grep $interpreter | awk '{ print $1; }' | xargs -I {} docker exec -u $(whoami) -i {} composer require $package