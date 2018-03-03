#!/bin/sh -ex
./bin/hugo -t client9
mkdir -p static/assets
curl -s https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css | csscut -html 'public/**/*.html' > static/assets/bootstrap-csscut.min.css
cp static/assets/bootstrap-csscut.min.css public/assets/bootstrap-csscut.min.css
./bin/minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public

