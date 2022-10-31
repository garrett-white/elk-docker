#!/bin/bash

echo "[ELK] Checking to see if Elasticsearch is up..."
while [[ $(curl -s -u "elastic:${ELASTIC_PASSWORD}" http://localhost:9200/_cluster/health | grep -c \"status\":\"green\") < 1 ]] ; do
  echo "[ELK] Elasticsearch is not available yet"
  sleep 1
done

echo "[ELK] Elasticsearch is up"

echo "[ELK Setting Kibana and Logstash password]"
curl -s -X POST -u "elastic:${ELASTIC_PASSWORD}" -H "Content-Type: application/json" http://localhost:9200/_security/user/kibana_system/_password -d "{\"password\":\"${KIBANA_PASSWORD}\"}"

curl -s -X POST -u "elastic:${ELASTIC_PASSWORD}" -H "Content-Type: application/json" http://localhost:9200/_security/user/logstash_system/_password -d "{\"password\":\"${LOGSTASH_PASSWORD}\"}"

echo "[ELK] Setting Replica and Shard count"
#curl -s -u "elastic:${ELASTIC_PASSWORD}" -X PUT "localhost:9200/_index_template/shards" -H 'Content-Type: application/json' -d'
#{
#  "index_patterns": [".monitoring-*-8-*", "metricbeat-8.*"],
#  "priority": 90000,
#  "data_stream": { },
#  "template": {
#    "settings": {
#      "number_of_shards": "1",
#      "number_of_replicas": "0"
#    }
#  }
#}
#'

sleep 120

curl -s -u "elastic:${ELASTIC_PASSWORD}" -X PUT "localhost:9200/_all/_settings" -H 'Content-Type: application/json' -d'
{
  "index" : {
    "number_of_replicas" : 0
  }
}
'
