#!/bin/sh -ex
./bin/hugo -t client9
./bin/minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public

