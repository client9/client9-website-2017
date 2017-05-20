#!/bin/sh -x
./godownloader-hugo.sh 0.20.7
./godownloader-misspell.sh 0.1.0
./godownloader-minify.sh
go get github.com/client9/s3push
