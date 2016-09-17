FROM fluent/fluentd:latest-onbuild
USER root
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH
RUN apk --no-cache --update add geoip-dev build-base ruby-dev grep
USER fluent
RUN gem install fluent-plugin-secure-forward
RUN gem install fluent-plugin-kafka
EXPOSE 24284
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
