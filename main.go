package main

import (
	"github.com/caddyserver/caddy/caddy/caddymain"

	// plug in plugins here, for example:
	// _ "import/path/here"
	_ "github.com/abiosoft/caddy-git"
	_ "github.com/captncraig/cors/caddy"
	_ "github.com/nicolasazrak/caddy-cache"
	_ "github.com/pyed/ipfilter"
	_ "github.com/traPtitech/caddy-trap-auth"
)

func main() {
	caddymain.EnableTelemetry = false
	caddymain.Run()
}
