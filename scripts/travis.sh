#!/bin/sh
set -ex
./scripts/setup.sh
./scripts/lint.sh
make public
cd public
git add -A
git commit -m "update"
git push origin master
