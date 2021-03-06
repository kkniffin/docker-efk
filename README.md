# This page is a Major Work in Progress.

## Components
Docker-Compose
  Elasticsearch
  Kibana
  Fluentd
  Elastalert



## Scaling Up Elasticsearch
docker-compose scale elasticsearch-slave=3

## Windows Log Shipping
    Winlogbeat - https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-5.0.0-beta1-windows-x86_64.zip
      - Download Winlogbeat
      - Copy files to %ProgramFiles%\winlogbeat
      - Run As Administrator
        - `PowerShell.exe -ExecutionPolicy UnRestricted -File %ProgramFiles%\winlogbeat\install-service-winlogbeat.psi`
      Configuration:
        `winlogbeat.event_logs:
          - name: Application
             ignore_older: 72h
          - name: Security
          - name: System

        output.logstash:
          # The Logstash hosts
          hosts: ["<fluentdip>:5044"]`

    Filebeat - https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.0.0-beta1-windows-x86_64.zip
      DHCP Logs
      NPS Logs
      IIS Logs


curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/nps-* -d '{"title" : "nps-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/dhcp-* -d '{"title" : "dhcp-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/dns-* -d '{"title" : "dns-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/fluent-* -d '{"title" : "fluent-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/docker-* -d '{"title" : "docker-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/cisco-* -d '{"title" : "cisco-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/index-pattern/tacacs-* -d '{"title" : "tacacs-*",  "timeFieldName": "@timestamp"}'
curl -XPUT http://10.80.14.47:9200/.kibana/config/4.1.1 -d '{"defaultIndex" : "dns-*"}'
