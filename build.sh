#!/usr/bin/env bash

set -eux

go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

export GOOS=linux
export GOARCH=amd64
xcaddy build v2.8.2 \
    --with github.com/traPtitech/caddy-trap-auth/v2@v2.8.2 \
    --with github.com/caddy-dns/lego-deprecated
