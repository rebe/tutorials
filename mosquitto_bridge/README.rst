Mosquitto bridge
================

Mosquitto is a MQTT broker which Wirepas often uses to test its MQTT interface.


The example in this repository builds on the `official docker image provided by the eclipse foundation <https://hub.docker.com/_/eclipse-mosquitto>`_.

You will find a `Dockerfile`_  and a configuration file (`mosquitto.conf`_).

The Dockerfile contains additional layers added to the official image which expose certain build and run time parameters to help you customize the MQTT broker.


The `mosquitto.conf`_ allows to customize the broker and its properties are documented at `<https://mosquitto.org/man/mosquitto-conf-5.html>`_.

Mosquitto Bridge
----------------

This container is preconfigured to be bridge between gateway and WNT backend MQTT broker. Therefore user controls which topics will be
sent to WNT (Wirepas Network Tool) backend and which ones are consumed on this broker and not sent forward to WNT broker. This example limits the
topics the bridge sends to WNT backend.

Mosquitto configuration file (`mosquitto.conf`_) needs to be modified to contain your WNT backend MQTT credential in order it be be able to
send the data to WNT backend.

Consider changing these lines:

 * address mybackendip:port

 * remote_username mymqttuser

 * remote_password mymqttpassword

The modifications takes effect when you run the broker.

Running the broker
------------------

Navigate to this folder and run


::

	docker-compose up -d


The broker will be started in the background.


.. _Dockerfile: ./Dockerfile
.. _mosquitto.conf: ./mosquitto.conf



