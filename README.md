# Tutorials

This repository contains several examples on how to run several backend
services which are useful to interact with Wirepas Mesh technology
at a backend level.

In more detail this repository contains instructions on how to run:

- [Mosquitto](https://github.com/wirepas/tutorials/tree/master/mosquitto): a MQTT broker  [homepage](https://mosquitto.org/);

- [Fluentd](https://github.com/wirepas/tutorials/tree/master/fluentd): a stream processor [homepage](https://www.fluentd.org/);

- [Elastic Search](https://github.com/wirepas/tutorials/tree/master/elastic_search): a search engine based on the Lucene library [homepage](https://www.elastic.co/products/elasticsearch);

- [Kibana](https://github.com/wirepas/tutorials/tree/master/elastic_search): an open source data visualization plugin for Elasticsearch [homepage](https://www.elastic.co/products/kibana).

Under [cookbook](https://github.com/wirepas/tutorials/tree/master/cookbook)
you will find useful receipts on how to put several of these services together.

## Requirements

Using the examples in this repository requires that you have docker and
docker-compose installed on your system. Please review
[Docker's installation instructions](https://docs.docker.com/install/)
or use the convenience script from [get.docker.com](https://get.docker.com>).

Using the convenience script you can install docker with the following one liner

```bash
   curl https://get.docker.com/ | sh
```

To install docker-compose you must have python and pip (recommended)
on your host. If you match these requirements you can
install docker-compose using the following command

```bash
    pip install docker-compose
```

## License

Licensed under the Apache License, Version 2.0. See LICENSE for the full license text.
