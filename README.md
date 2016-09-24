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
