#!/bin/bash

go mod download
chmod -R +w "$GOPATH/pkg/mod/github.com/caddyserver/caddy@v1.0.5"
patch "$GOPATH/pkg/mod/github.com/caddyserver/caddy@v1.0.5/caddyhttp/httpserver/plugin.go" < directive.patch
