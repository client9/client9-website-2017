#!/bin/sh -x
./scripts/godownloader-hugo.sh 0.21
./scripts/godownloader-misspell.sh 0.2.0
./scripts/godownloader-minify.sh
go get github.com/client9/s3push