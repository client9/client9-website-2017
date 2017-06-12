#!/bin/sh
set -ex
cat ./scripts/setup.sh | xargs -P4 -ICMD /bin/sh -exc CMD
./scripts/lint.sh
make public
