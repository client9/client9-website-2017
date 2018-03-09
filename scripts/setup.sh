#!/bin/sh -x
go get github.com/client9/csstool/css
./scripts/godownloader-hugo.sh v0.37.1
./scripts/godownloader-misspell.sh
./scripts/godownloader-minify.sh
#go get github.com/client9/s3push
