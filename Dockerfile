FROM alpine:3.7

WORKDIR /usr/src/app

RUN apk add --update \
  net-snmp

RUN apk add --update \
  net-snmp-tools

CMD [ "/usr/src/app/telegraf", "-config=/config/telegraf.conf" ]

EXPOSE 161/UDP

COPY . .
COPY ./mib /usr/share/snmp/mibs