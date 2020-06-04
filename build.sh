#!/usr/bin/env bash

set -eux

go get -u github.com/caddyserver/xcaddy/cmd/xcaddy

export GOOS=linux
export GOARCH=amd64
xcaddy build \
    --with github.com/traPtitech/caddy-trap-auth/v2
