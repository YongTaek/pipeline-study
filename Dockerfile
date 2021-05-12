FROM logstash:7.12.1

RUN logstash-plugin install logstash-output-webhdfs

COPY logstash.conf /usr/share/logstash/
COPY logstash.yml /usr/share/logstash/config/logstash.yml

CMD ["logstash", "-f", "logstash.conf"]
