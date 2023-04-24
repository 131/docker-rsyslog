FROM alpine:3.17
ARG RSYSLOG_VERSION=8.2212.0-r0

RUN apk upgrade --no-cache \
    && apk add --no-cache \
    rsyslog=$RSYSLOG_VERSION\
    rsyslog-tls

ENTRYPOINT rsyslogd -n -f /etc/rsyslogd.conf

EXPOSE 514/tcp
EXPOSE 514/udp
LABEL "org.opencontainers.image.version"="8.2212.0-r0"
