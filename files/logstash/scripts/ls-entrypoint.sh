#!/bin/bash

echo "[LOGSTASH] Checking to see if Elasticsearch is up and template is created"
while [[ $(curl -s http://es01:9200/_template/shards | grep -c number_of_shards) < 1 ]] ; do
  echo "[LOGSTASH] Elasticsearch is not available yet or shards template is not created"
  sleep 1
done

bin/logstash-plugin install logstash-filter-prune

/usr/local/bin/docker-entrypoint
