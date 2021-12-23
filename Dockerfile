FROM alpine:3.14.2

RUN apk update && apk add ca-certificates bash

WORKDIR /code

COPY entrypoint.sh /code/entrypoint.sh

ENTRYPOINT ["/code/entrypoint.sh"]
