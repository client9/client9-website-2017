#!/bin/sh
set -ex
./scripts/setup.sh
./scripts/lint.sh
case "$TRAVIS_BRANCH" in
  master)
    make draft
    s3push --bucket www-draft.client9.com
    ;;
  public)
    make public
    s3push --bucket www.client9.com
    ;;
  *)
    echo "Unknown branch $TRAVIS_BRANCH"
    exit 2
    ;;
esac
