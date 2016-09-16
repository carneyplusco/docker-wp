# Docker WP

A basic Docker starter kit for WordPress-based sites. With it you get:

* Nginx 1.4.6
* PHP 5.6
* MySQL 5.5.50
* WP CLI

### Requirements

* [Docker](https://www.docker.com/products/docker)

### Project setup

Clone this project then add your web project to a subfolder called `app`. Docker will mount this as the root web directory.
Run `docker-compose up -d` to set up the container with the above software. WP CLI will automatically download the latest WordPress if it is not present in the `app` folder.

Your development site will appear locally at `http://localhost`
