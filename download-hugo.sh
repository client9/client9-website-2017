#!/bin/bash

# https://github.com/spf13/hugo/releases/download/v0.20.7/hugo_0.20.7_Linux-64bit.tar.gz


VERSION=0.20.7

HOSTOS=$(uname -s)
case ${HOSTOS} in
Darwin) OS=macOS
  ;;
Linux)  OS=Linux
  ;;
*)  echo "unknown platform '${HOSTOS}'"
  exit 1
esac  

TARBALL=hugo_${VERSION}_${OS}-64bit.tar.gz
URL=https://github.com/spf13/hugo/releases/download/v${VERSION}/${TARBALL}
echo "Download ${TARBALL}"
curl -sSL -o /tmp/${TARBALL} ${URL}
tar -C /tmp -xzvf /tmp/${TARBALL}
cp /tmp/hugo .
./hugo version

