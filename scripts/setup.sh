#!/bin/sh -x
go get github.com/client9/csstool/css
curl -sfL https://install.goreleaser.com/github.com/gohugoio/hugo.sh | bash
curl -sfL https://install.goreleaser.com/github.com/client9/misspell.sh | bash
curl -sfL https://install.goreleaser.com/github.com/tdewolff/minify.sh | bash
