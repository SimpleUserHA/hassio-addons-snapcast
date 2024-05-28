#!/usr/bin/with-contenv bashio

SNAPCLIENT_OPTS=$(bashio::config 'snapclientopts')

PAREC_IP=$(bashio::config 'parecip')
PAREC_PORT=$(bashio::config 'parecport')

bashio::log.info "Read Snapclient settings..."
bashio::log.info "snapclientopts = ${SNAPCLIENT_OPTS}"

bashio::log.info "Version..."
/usr/bin/snapclient -v

parec -d 1 --rate=44100 --format=s16le | nc ${PAREC_IP} ${PAREC_PORT}

bashio::log.info "Start Snapclient..."
/usr/bin/snapclient ${SNAPCLIENT_OPTS}
