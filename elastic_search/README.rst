Elastic Search
==============

Elasticsearch is a search engine based on the Lucene library. It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents. Elasticsearch is developed in Java and is released as open source under the terms of the Apache License `[wikipedia] <https://en.wikipedia.org/wiki/Elasticsearch>`_.


Pre-requisites
---------------

Before you start using ealstic search it is important to get familiar with `Elastic's user guide and installation`_. In this page we focus on the Docker installation.


.. WARNING::
    One of the main requirement to have a successful spin up of Elasticsearch is to set the heap size of your machine correctly.


Depending on your host and as `described in the official documentation <https://www.elastic.co/guide/en/elasticsearch/reference/6.5/docker.html>`_:


**Linux**
::

    The vm.max_map_count setting should be set permanently in /etc/sysctl.conf:

    $ grep vm.max_map_count /etc/sysctl.conf
    vm.max_map_count=262144
    To apply the setting on a live system type: sysctl -w vm.max_map_count=262144


**macOS with Docker for Mac**

::

    The vm.max_map_count setting must be set within the xhyve virtual machine:

    $ screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty
    Just press enter and configure the sysctl setting as you would for Linux:

    sysctl -w vm.max_map_count=262144

**Windows and macOS with Docker Toolbox**

::

    The vm.max_map_count setting must be set via docker-machine:

    docker-machine ssh
    sudo sysctl -w vm.max_map_count=262144


Starting elastic search
=======================

In this repository you will find an example on our to setup a single node elasticsearch `docker-compose.yml`_.

.. WARNING::
    This setup is not recommended for production usage! Please refer to the official documentation if you are setting up a production oriented server.


The docker compose will start elasticsearch and attach it to an external docker network called *fluentd_stream_processing* and another internal network called *es*.

The *fluentd_stream_processing* network must be created separately. Instructions on how to create it are found from `fluentd help`_.

The *es* network will be setup automatically for you by docker-compose.

Once you are sure that you have met the requirements, type

::

    docker-compose up -d

and elasticsearch will start inside a container and keep running until you explicitly stop it.

To view the status of your containers, you can use

::

    docker ps -a

If all went well, your containers should continue running and now you are ready to communicate with elasticsearch over your host's **9200** port (see ports directive in `docker-compose.yml`_).



KIBANA
======

Kibana is a plugin to visualize data stored in elasticsearch. The `docker-compose.yml`_ will also start kibana and advertise its service at port **5601**.

To access Kibana point your browser to `localhost:5601 <http://localhost:5601>`_.


Visualizing data in Kibana
--------------------------

Kibana works by indexing a particular tag that is present in elasticsearch. In this example it is expected that you match your data against the index defined with fluentd.


To do that, head to the kibana management and type your index. Kibana will tell you if elasticsearch has data matching that tag. If there is no data, you first need to ensure that you have data present in such index.



..  _Elastic's user guide and installation: https://www.elastic.co/guide/en/elastic-stack/6.5/index.html

.. _docker-compose.yml: ./_docker-compose.yml

.. _fluentd help: ../fluentd/README.rst


