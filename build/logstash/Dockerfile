# Logstash customizations
FROM logstash:5.0
RUN mkdir -p /config-dir
RUN mkdir -p /log-dir
#RUN logstash-plugin update
COPY files/config-dir/* /config-dir/
