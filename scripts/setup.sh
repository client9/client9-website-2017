#!/bin/sh -x
./scripts/godownloader-hugo.sh 0.37
./scripts/godownloader-misspell.sh 0.3.0
./scripts/godownloader-minify.sh
#go get github.com/client9/s3push
