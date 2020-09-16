FROM alpine:3.12

RUN apk add --no-cache curl jq

RUN mkdir /lnd/

COPY unlock.sh /bin/unlock

RUN chmod +x /bin/unlock

ENTRYPOINT ["unlock"]
