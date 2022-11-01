#!/bin/bash

# /usr/share/elasticsearch/scripts/es-set-shards-replicas.sh &

# /usr/share/elasticsearch/scripts/es-index-templates.sh &

/usr/share/elasticsearch/scripts/es-set-password-and-replicas.sh &

/usr/share/elasticsearch/scripts/fleet-add-integration.sh &

/usr/local/bin/docker-entrypoint.sh
