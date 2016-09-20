# Docker-elk-syslog

1. git clone https://github.com/kkniffin/docker-elk
2. mkdir -p ../docker-data/docker-elk/elasticsearch/templates
3. mkdir -p ../docker-data/docker-elk/elasticsearch/data
4. mkdir -p ../docker-data/docker-elk/elastalert/rules
5. mkdir -p ../docker-data/logstash
6. mkdir -p ../docker-data/zookeeper/data:/data
7. mkdir -p ../docker-data/zookeeper/datalog:/datalog
8. mkdir -p ../docker-data/fluentd-receiver/config
9. mkdir -p ../docker-data/fluentd-receiver/data
10. chmod -R 777 ../docker-data/



6. curl -XPUT http://localhost:9200/_template/logstash_per_index -d @elasticsearch/config/templates/logstash-template.json
7. curl -XPUT http://localhost:9200/_template/netflow_per_index -d @elasticsearch/config/templates/netflow-template.json




for i in * ; do FILE=`echo $i | cut -f1 -d'.'`; FULLPATH="`pwd`/$i"; curl -XPUT "http://localhost:9200/_template/$FILE" -d@$FULLPATH; done


docker-compose scale elasticsearch-slave=3
