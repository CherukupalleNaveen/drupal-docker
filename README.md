# Containerized Drupal 10.x Environment

## Prerequisites?
1. Install docker & Docker Compose using the below resource,
    - Docker Installation: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
    - Docker Compose Installation: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04


## Security Practices:
- Using .env file to store the environment variables like DB Name, DB Username, DB Password, etc. and this file can be part of .gitignore
- Using seperate DB user for Drupal

## Scope of improvements:
- Docker & Docker Compose Installation can be automated using the above setup.sh
- Using Github Secrets or other vaults mechanism for storing the credentials replacing .env file