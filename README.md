# PHP dev environment

## Important
Modify **.gitignore** file to suit the project.

## Web Server Root folder
Nginx web server is used. You can customize the root folder of the web server by changing **root** property in __nginx.conf__ file.

The web server will be available at `127.0.0.1`

## Docker Compose
Change the **USER** arg in docker-compose.yml to the output of `whoami` on the host machine.
Modify the volumes of nginx and php interpreter to match the project structure.

## Folder Structure
root
├── app
│   └── public [**The files in this folder will be served by nginx server**]
│       └── index.php
├── docker-compose.yml
├── nginx.conf
├── PHP.Dockerfile
└── README.md

## PHP interpreter
Modify PHP.dockerfile to suite the needs. __app__ folder is mounted onto PHP interpreter. 
### Notes
1. Added PDO, pdo_mysql
2. Added xdebug
3. Added Composer

## Composer

### PHP.Dockerfile
If you changed the folder structure, set the working directory to the folder which the composer file and vender folder should be placed.

### composer.json
In order to generate **composer.json** file, run `generate-composer.sh <interpreter-container-name>`. This will generate a sample **composer.json** file in __app__ folder.

### composer.json dependency install
In order to install dependencies, run `composer-install.sh <interpreter-container-name>`. This will install all the dependencies and create **composer.lock** and **vendor** folder in __app__ folder.

## PHPMyAdmin Dashboard

The dashboard will be availabe at `127.0.0.1/phpmyadmin`.