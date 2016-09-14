# Docker-elk-syslog

1. git clone https://github.com/kkniffin/docker-efk-syslog
2. chmod -R 777 ./elasticsearch/data
3. curl -XPUT http://localhost:9200/_template/logstash_per_index -d @elasticsearch/config/templates/logstash-template.json
4. curl -XPUT http://localhost:9200/_template/netflow_per_index -d @elasticsearch/config/templates/netflow-template.json

mkdir -p ../docker-data/docker-elk/elasticsearch/templates

mkdir -p ../docker-data/docker-elk/elasticsearch/data

mkdir -p ../docker-data/docker-elk/elastalert/rules
