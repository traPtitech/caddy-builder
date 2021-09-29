FROM golang:1.16.8-alpine AS build
WORKDIR /app
RUN go get -u github.com/caddyserver/xcaddy/cmd/xcaddy

ENV GOOS=linux
ENV GOARCH=amd64

RUN xcaddy build v2.4.3 \
  --with github.com/traPtitech/caddy-trap-auth/v2@v2.4.3 \
  --with github.com/caddy-dns/lego-deprecated

FROM alpine:3.14.2

WORKDIR /app

COPY --from=build /app ./

ENTRYPOINT ["./caddy"]
