#!/usr/bin/env bash

set -eux

go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

export GOOS=linux
export GOARCH=amd64
xcaddy build "$CADDY_VERSION" \
    --with github.com/traPtitech/caddy-trap-auth/v2@v2.4.6 \
    --with github.com/caddy-dns/lego-deprecated
