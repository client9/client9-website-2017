#!/bin/sh -x
curl -sfL https://install.goreleaser.com/github.com/client9/csstool.sh | sh
curl -sfL https://install.goreleaser.com/github.com/gohugoio/hugo.sh | sh
curl -sfL https://install.goreleaser.com/github.com/client9/misspell.sh | sh
curl -sfL https://install.goreleaser.com/github.com/tdewolff/minify.sh | sh -s v2.3.6
