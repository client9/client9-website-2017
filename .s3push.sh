base ./public
bucket www-draft.client9.com
region us-east-1

upload {
  include *
  storage-class reduced-redundancy
  cache-control max-age=3600
}

upload {
  include *.html
  content-language en-US
  cache-control max-age=3601
}

upload {
  include *.gif *.png *.jpg
  cache-control max-age=86400
}
