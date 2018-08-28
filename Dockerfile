# build stage
FROM pgalchemy/skynet-access-service-build AS build-env

RUN go build -o main

# Final Stage
FROM alpine:3.6

RUN apk --no-cache add ca-certificates bash openssl-dev libffi-dev python python-dev py-pip build-base && pip install credstash
COPY --from=build-env /go/src/github.com/pgalchemy/grs-access-service/main .
