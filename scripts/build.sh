#!/bin/sh -ex

touch themes/client9/layouts/partials/style-bootstrap.css

# generate the html
./bin/hugo -t client9

# compute minimal bootstrap
curl -s https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css | ./bin/css cut --html 'public/**/*.html' --remove-source-map --remove-at-rule '@media print' --remove ':root' > themes/client9/layouts/partials/style-bootstrap.css

# regenerate with minimal, embedded bootstrap
./bin/hugo -t client9

# let's shrink!
./bin/minify \
    --html-keep-whitespace \
    --html-keep-end-tags \
    --html-keep-document-tags \
    -r -o public public
