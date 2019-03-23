Backend services - examples
=========================

This repository contains several examples on how to run several backend services which are useful to interact with Wirepas Mesh technology at a backend level.

In more detail this repository contains instructions on how to run:

- `Mosquitto`_ a MQTT broker  `[homepage] <https://mosquitto.org/>`_;

- `Fluentd`_ a stream processor `[homepage] <https://www.fluentd.org/>`_;

- `Elastic Search`_ a search engine based on the Lucene library `[homepage] <https://www.elastic.co/products/elasticsearch>`_;

- `Kibana`_ an open source data visualization plugin for Elasticsearch `[homepage] <https://www.elastic.co/products/kibana>`_.


Requirements
-------------
Using the examples in this repository requires that you have docker and docker-compose installed on your system. Please review `Docker's installation instructions <https://docs.docker.com/install/>`_ or use the conveninence script from `get.docker.com <https://get.docker.com>`_.

Using the convenience script you can install docker with the following one liner:


::

    curl https://get.docker.com/ | sh


To install docker-compose you must have python and pip (recommended) on your host. If you match these requirements you can install docker-compose using the following command

::

    pip install docker-compose



.. links
.. _Fluentd: ./fluentd
.. _Mosquitto: ./mosquitto
.. _Elastic Search: ./elastic_search
.. _Kibana: ./elastic_search


License
-------

Licensed under the Apache License, Version 2.0. See LICENSE for the full license text.
