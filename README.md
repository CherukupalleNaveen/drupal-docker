# Containerized Drupal 10.x Environment

## Prerequisites?
1. Install docker & Docker Compose using the below resource,
    - Docker Installation: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
    - Docker Compose Installation: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04

## How to setup?
1. Clone this repository
2. Make the "setup.sh" script executable using below command,
    ```
    sudo chmod +x setup.sh
    ```
3. Execute "setup.sh" using the below command,
    ```
    ./setup.sh
    ```
## What does setup.sh will do?
setup.sh script will do the below,
1. It will download composer and setup it up in your host machine
1. It updated the package repositories and will install PHP and it's dependencies
1. Create Drupal-10.X project using composer
1. Copy default.settings.php in site/default/ as settings.php and Grant permission to the directory
1. Will create the drupal-10.X project using composer and starts 2 container
    - Container-1: drupal-web - Drupal Core & Frontend
    - Container-2: drupal-db - Databse for Drupal

## Security Practices:
- Using .env file to store the environment variables like DB Name, DB Username, DB Password, etc. and this file can be part of .gitignore
- Using seperate DB user for Drupal

## Scope of improvements:
- Docker & Docker Compose Installation can be automated using the above setup.sh
- Using Github Secrets or other vaults mechanism for storing the credentials replacing .env file