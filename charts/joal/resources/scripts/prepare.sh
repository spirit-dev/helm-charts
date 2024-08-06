#!/bin/bash

JOAL_CONF_TORRENTS=$JOAL_CONF/torrents
JOAL_CONF_CLIENTS=$JOAL_CONF/clients

DEFAULT_CLIENT=$TEMP_STORAGE/default-1.0.0.client
DEFAULT_CONFIG=$TEMP_STORAGE/config.json

hello() {
    echo -e "--------------------------------------------------------------------"
    echo -e "- Initialize fodler structure...                                   -"
    echo -e "--------------------------------------------------------------------"

    echo -e "JOAL_CONF=$JOAL_CONF"
    echo -e "JOAL_CONF_TORRENTS=$JOAL_CONF_TORRENTS"
    echo -e "JOAL_CONF_CLIENTS=$JOAL_CONF_CLIENTS"

    echo -e "TEMP_STORAGE=$TEMP_STORAGE"
    echo -e "DEFAULT_CLIENT=$DEFAULT_CLIENT"
    echo -e "DEFAULT_CONFIG=$DEFAULT_CONFIG"
}

goodbye() {
    echo -e "--------------------------------------------------------------------"
    echo -e "- Done                                                             -"
    echo -e "--------------------------------------------------------------------"
}

prepareFolderStructure() {

    echo -e "torrent folder"
    mkdir -p $JOAL_CONF_TORRENTS

    echo -e "clients folder"
    mkdir -p $JOAL_CONF_CLIENTS
}

defaultConfig() {
    echo -e "Move default config"
    cp $DEFAULT_CLIENT $JOAL_CONF_CLIENTS
    cp $DEFAULT_CONFIG $JOAL_CONF
}

curlClients() {
    REPO=anthonyraymond/joal

    apk add --no-cache git

    git clone https://github.com/$REPO.git $JOAL_CONF/joal-tmp
    cp $JOAL_CONF/joal-tmp/resources/clients/*.client $JOAL_CONF_CLIENTS
    rm -rf $JOAL_CONF/joal-tmp
}

hello

prepareFolderStructure

defaultConfig

curlClients

goodbye
