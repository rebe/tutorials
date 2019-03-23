Mosquitto
=========

Mosquitto is a MQTT broker which Wirepas often uses to test its MQTT interface.


The example in this repository builds on the `official docker image provided by the eclipse foundation <https://hub.docker.com/_/eclipse-mosquitto>`_.

You will find a `Dockerfile`_  and a configuration file (`mosquitto.conf`_).

The Dockerfile contains additional layers added to the official image which expose certain build and run time parameters to help you customize the MQTT broker.


The `mosquitto.conf`_ allows to customize the broker and its properties are documented at `<https://mosquitto.org/man/mosquitto-conf-5.html>`_.


Running the broker
------------------

Navigate to this folder and run


::

	docker-compose up -d


The broker will be started in the background.


.. _Dockerfile: ./Dockerfile
.. _mosquitto.conf: ./mosquitto.conf



