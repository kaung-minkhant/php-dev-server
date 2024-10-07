# PHP dev environment

## Folder Structure
root
├── composer.sh
├── .env.example
├── .gitignore
├── docker-compose.yml
├── .config
│   └── nginx.conf
├── dockerfiles
│   └── PHP.Dockerfile
├── README.md
└── src
    └── public
        └── index.php

## .gitignore
Modify **.gitignore** file to suit the project.

## .env
Create **.env** file from **.env.example** to suit the project

## Web Server Root folder
Nginx web server is used. You can customize the root folder of the web server by changing **root** property in __nginx.conf__ file.

The web server will be available at `127.0.0.1`

To modify the port, modify **listen** property in __nginx.conf__ file.

## Docker Compose
Modify the volumes of nginx and php interpreter to match the project structure.

## PHP interpreter
Modify PHP.dockerfile to suite the needs, with the proper source folder. 
### Notes
1. Added PDO, pdo_mysql
2. Added xdebug

## Composer

User **composer.sh** file to run composer related commands.

## PHPMyAdmin Dashboard

The dashboard will be availabe at `127.0.0.1/phpmyadmin`.
The URL can be modified if the domain or port is changed. You can modify the url in **.env** file.
This url should be exactly as typed into the search bar.

## Artisan

Artisan is used with default PHP interpreter with necessary extension only.
User **artisan.sh** to execute any command related to artisan.