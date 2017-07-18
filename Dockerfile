FROM docker.elastic.co/logstash/logstash:5.5.0

RUN /usr/share/logstash/bin/logstash-plugin remove x-pack --purge
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-journald

