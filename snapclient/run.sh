#!/usr/bin/env bashio

USERNAME=$(bashio::config 'username')

bashio::log.info "${USERNAME}"

SNAPCLIENT_OPTS=$(bashio::config 'snapclientopts')

bashio::log.info "Read Snapclient settings..."
bashio::log.info "snapclientopts = ${SNAPCLIENT_OPTS}"

bashio::log.info "Version..."
/usr/bin/snapclient -v

bashio::log.info "Start Snapclient..."
/usr/bin/snapclient ${SNAPCLIENT_OPTS}
