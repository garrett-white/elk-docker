#!/bin/bash

echo "[ELK] Checking to see if Elasticsearch is up..."
while [[ $(curl http://localhost:9200/_cluster/health | grep -c \"status\":\"green\") < 1 ]] ; do
  echo "[ELK] Elasticsearch is not available yet"
  sleep 1
done

echo "[ELK] Elasticsearch is up"
echo "[ELK] Creating index templates"

curl -X PUT "localhost:9200/_template/packetbeat" -H 'Content-Type: application/json' -d'
{
  "order": 0,
  "version": 60001,
  "index_patterns": [
    "logstash-packetbeat-*"
  ],
  "mappings": {
    "doc": {
      "properties": { 
        "dest": {
          "dynamic": true,
          "properties": {
            "geo": {
              "dynamic": true,
              "properties": {
                "ip": {
                  "type": "ip"
                },
                "location": {
                  "type": "geo_point"
                },
                "latitude": {
                  "type": "half_float"
                },
                "longitude": {
                  "type": "half_float"
                }
              }
            }
          }
        }
      }
    }
  }
}
'
