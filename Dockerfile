# Final Stage
FROM alpine:3.6

RUN apk --no-cache add ca-certificates bash openssl-dev libffi-dev python python-dev py-pip build-base && pip install credstash
