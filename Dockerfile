FROM alpine:3.14.2 as certs
RUN apk update && apk add ca-certificates

FROM gcr.io/distroless/base
COPY --from=certs /etc/ssl/certs /etc/ssl/certs

COPY entrypoint.sh entrypoint.sh 

ENTRYPOINT ["entrypoint.sh"]
