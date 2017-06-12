#!/bin/sh
set -ex
# https://www.client9.com/parallelize-shell-or-bash-scripts-using-xargs/
cat ./scripts/setup.sh | xargs -P4 -ICMD /bin/sh -exc CMD

./scripts/lint.sh
./scripts/build.sh
