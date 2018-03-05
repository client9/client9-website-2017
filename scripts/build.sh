#!/bin/sh -ex
./bin/hugo -t client9
mkdir -p public/assets
curl -s https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css | css cut --html 'public/**/*.html' > public/assets/bootstrap-csscut.min.css
./bin/minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public

