#!/bin/bash

go mod download
chmod -R +w "$GOPATH/pkg/mod/github.com/caddyserver/caddy@v1.0.1"
patch "$GOPATH/pkg/mod/github.com/caddyserver/caddy@v1.0.1/caddyhttp/httpserver/plugin.go" < directive.patch
