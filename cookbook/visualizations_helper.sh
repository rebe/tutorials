#!/usr/bin/env bash
# Wirepas 2019

set -e
set -x

PATH=${PATH}:${HOME}/.local/bin

function install_sys_dep
{
  # install pre-requisites
  sudo apt-get install python

  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python get-pip.py

  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  rm get-docker.sh
}

function clean_repos
{
  rm -rf "/home/${USER}/wirepas/tutorials"
  rm -rf "/home/${USER}/wirepas/backend-client"
}

# UNCOMMENT the line below if you want the script to install system dependencies
#install_sys_dep

# UNCOMMENT the line below if you want to clean the local directory
#clean_repos


# clone tutorials
mkdir -p "${USER}/wirepas"
git clone https://github.com/wirepas/tutorials.git  "/home/${USER}/wirepas/tutorials"

# start fluentd
cd "/home/${USER}/wirepas/tutorials/fluentd"
sudo docker-compose up -d --build --force-recreate

# start elastic search
cd "/home/${USER}/wirepas/tutorials/elastic_search"
sudo sysctl -w vm.max_map_count=262144
sudo docker-compose up -d --build --force-recreate

# start mosquitto
cd "/home/${USER}/wirepas/tutorials/mosquitto"
echo "The broker will have default parameters"
sudo docker-compose up -d --build --force-recreate


# start backend client
git clone https://github.com/wirepas/backend-client.git "/home/${USER}/wirepas/backend-client"
cd "/home/${USER}/wirepas/backend-client"

cat <<HEREDOC >  "/home/${USER}/wirepas/backend-client/container/.settings.yml"

mqtt_hostname: "localhost"
mqtt_username: "mqttuser"
mqtt_password: "aoiuashn0p1284eydh190sa1237"
mqtt_port: 1883
mqtt_force_unsecure: true

fluentd_hostname: localhost
fluentd_record: ruuvi
fluentd_tag: evk

HEREDOC


docker-compose -f "/home/${USER}/wirepas/backend-client/container/docker-compose.yml" up -d --build --force-recreate
