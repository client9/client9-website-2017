#!/bin/sh -ex
./bin/hugo -t client9
mkdir -p public/assets static/assets

# write once to public for publishing
curl -s https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css | css cut --html 'public/**/*.html' --remove ':root' > public/assets/bootstrap-csscut.min.css

# copy it to static/assets for use in hugo run
cp -f public/assets/bootstrap-csscut.min.css \
      static/assets/bootstrap-csscut.min.css

./bin/minify \
    --html-keep-whitespace \
    --html-keep-end-tags \
    --html-keep-document-tags \
    -r -o public public
