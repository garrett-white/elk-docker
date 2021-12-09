#!/bin/bash

echo "[ELK] Checking to see if Elasticsearch is up..."
while [[ $(curl http://localhost:9200/_cluster/health | grep -c \"status\":\"green\") < 1 ]] ; do
  echo "[ELK] Elasticsearch is not available yet"
  sleep 1
done

echo "[ELK] Elasticsearch is up"
echo "[ELK] Setting Replica and Shard count"

curl -X PUT "localhost:9200/_template/shards" -H 'Content-Type: application/json' -d'
{
  "index_patterns": ["*"],
  "order": -1,
  "settings": {
    "number_of_shards": "1",
    "number_of_replicas": "0"
  }
}
'
