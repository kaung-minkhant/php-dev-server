#!/bin/bash
echo hello
echo Args are "$@"
if [ -f /var/www/html/artisan ]; then
  chmod +x /var/www/html/artisan
  /var/www/html/artisan "$@"
fi