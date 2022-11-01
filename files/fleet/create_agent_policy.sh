#!/bin/bash

curl -u elastic:changeme --request POST --url http://127.0.0.1:5601/api/fleet/agent_policies  --header 'Content-Type: application/json' --header 'kbn-xsrf: xx' -d'
{
"id": "windows-policy222",
"namespace": "default",
"monitoring_enabled": [
    "logs",
    "metrics"
],
"name": "windows policy222",
"description": "windows endpoint security policy"
}
'
