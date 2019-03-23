MySQL
=====

This folder contains a simple example on how to start and customize a
MySQL database.

We recommend that you visit the official MySQL page for instructions https://hub.docker.com/_/mysql

The example in this folder allows you to setup a database with the properties
defined in the docker-compose.yml file.

On the building stage Docker will copy the contents of `sql <./sql>`_ to
MySQL image entrypoint. The scripts will execute upon the database initialization.


To build and start the server type

::

    docker-compose build

    docker-compose up -d


