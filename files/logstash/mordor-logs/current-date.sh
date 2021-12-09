sed -i "s/@timestamp\":\".*\",\"@/@timestamp\":\"$(date --iso-8601=seconds)\",\"@/g" /opt/elk-siem/logstash/mordor-logs/empire_*.json
