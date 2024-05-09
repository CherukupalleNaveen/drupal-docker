# Containerized Drupal 10.x Environment

## Prerequisites?
1. Install docker & Docker Compose using the below resource,
    - Docker Installation: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
    - Docker Compose Installation: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04

## How to setup the Local Environment?
1. Clone this repository
2. Make the "setup.sh" script executable using below command,
    ```
    sudo chmod +x setup_local.sh
    ```
3. Execute "setup_local.sh" using the below command,
    ```
    ./setup.sh
    ```
## What does setup_local.sh will do?
setup.sh script will do the below,
1. It will download composer and setup it up in your host machine
1. It updated the package repositories and will install PHP and it's dependencies
1. Create Drupal-10.X project using composer
1. Copy default.settings.php in site/default/ as settings.php and Grant permission to the directory

## Containerization:
- Containers:
    - Container-1: drupal_web
        - Docker will mount the local drupal project to the drupal_web container
    - Container-2: drupal_db
        - This container will be used as a DB for the above drupal site
- Making the container up:
    ```
    docker-compose up -d
    ```
- Making the containers down:
    ```
    docker-compose down
    ```

## Security Practices:
- Using .env file to store the environment variables like DB Name, DB Username, DB Password, etc. and this file can be part of .gitignore
- Using seperate DB user for Drupal

## Alternative Approaches:
- Bruteforce - To setup a new drupal site, with debian as a base image, we can install drupal using composer inside the container using a Dockerfile
- Thoughts - Having php, nginx/apache and mariadb/postgres containers to run a drupal site for better debugging and scalability
- Exploration - Customising docker4drupal project according to our requirements

## Good to implement?
- Using Github Secrets or other vaults mechanism for storing the credentials replacing .env file