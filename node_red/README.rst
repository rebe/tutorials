Node-RED
=========

Node-RED is a flow-based programming tool, original developed by IBM's
Emerging Technology Services team and now a part of the JS Foundation.


In this folder you will find an example on how to build your own Node-RED
image and how to start it up. There is also an example flow which will allow
you to interface with a Wirepas Mesh network.

First of all, you will need to copy the protocol buffer files used by the
version of the Wirepas gateway you will to talk with.

Download all the \*.proto files from the `backend-apis repository <https://github.com/wirepas/backend-apis/tree/master/gateway_to_backend/protocol_buffers_files>`_.

Next, build and start Node-RED by typing:

::

    docker-compose up -d

If the build fails, please review the Dockerfile contents and ensure you have
the proto files in the correct build context (side by side with docker-compose.yml).

Open your browser and navigate to

::

    http://localhost:1880

Once Node-RED loads, locate the hamburger menu on the top right corner and
select

::

    Manage palette > Install

In the install interface locate and download the following requirements

    node-red-node-base64 (tested with 0.1.3)
    
    node-red-contrib-protobuf (tested with 1.0.3)

    node-red-contrib-binary (tested with 0.0.6)

After the requirements are installed, go back to the main page and on the
hamburger menu press

::

    Import > Clipboard


Copy and paste the contents of `wm-red-flow.json <./wm-red-flow.json>`_.

Update the MQTT connection block with your credentials and the path to your
MQTT broker.

Once connected to the MQTT broker, WM-data will flow through Node-RED and
you will be able to customize the flow to your liking.

In the example flow, the payload is converted to json and if it matches
endpoints 238:238, it will decode the payload header sent by the
Wirepas Mesh positioning application.


