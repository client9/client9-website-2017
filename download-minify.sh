#!/bin/sh
set -e

uname_arch() {
  arch=$(uname -m)
  case $arch in
    x86_64) arch="amd64" ;;
    x86)    arch="386" ;;
    i686)   arch="386" ;;
    i386)   arch="386" ;;
  esac
  echo ${arch}
}
uname_os() {
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  # other fixups here
  echo ${os}
}
is_command() {
  type $1 > /dev/null 2> /dev/null
}
untar() {
  tarball=$1
  case ${tarball} in
  *.tar.gz|*.tgz) tar -xzf ${tarball} ;;
  *.tar) tar -xf ${tarball} ;;
  *.zip) unzip ${tarball} ;;
  *)
    echo "Unknown archive format for ${tarball}"
    return 1
  esac
}
mktmpdir() {
   test -z "$TMPDIR" && TMPDIR="$(mktemp -d)"
   mkdir -p ${TMPDIR}
   echo ${TMPDIR}
}
http_download() {
  DEST=$1
  SOURCE=$2
  HEADER=$3

  if is_command curl; then
    WGET="curl --fail -s -L"
    test -z "${HEADER}" || WGET="${WGET} -H \"${HEADER}\""
    if [ "${DEST}" != "-" ]; then
      WGET="$WGET -o $DEST"
    fi
  elif is_command wget &> /dev/null; then
    WGET="wget -q -O $DEST"
    test -z "${HEADER}" || WGET="${WGET} --header \"${HEADER}\""
  else
    echo "Unable to find wget or curl.  Exit"
    exit 1
  fi

  # remove destination if not stdout
  if [ "${DEST}" != "-" ]; then
    rm -f "${DEST}"
  fi

  # run
  ${WGET} ${SOURCE}
}
ARCH=$(uname_arch)
OS=$(uname_os)
BINARY=minify
TARGET=https://dl.equinox.io/tdewolff/minify/stable
FORMAT="tgz"
CHANNEL=stable
BINDIR=${BINDIR:-./bin}

TARBALL="${BINARY}-${CHANNEL}-${OS}-${ARCH}.${FORMAT}"
echo "Seeking ${TARBALL}"
TARBALL_URL=$(http_download - ${TARGET} | grep ${TARBALL} | cut -d '"' -f 2)
echo "Downloading from ${TARBALL_URL}"
TMPDIR=$(mktmpdir)
http_download ${TMPDIR}/${TARBALL} ${TARBALL_URL}
(cd ${TMPDIR} && untar ${TARBALL})
install -d ${BINDIR}
install ${TMPDIR}/${BINARY} ${BINDIR}/
echo "Installed ${BINDIR}/${BINARY}"
