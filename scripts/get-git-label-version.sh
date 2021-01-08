#bin/bash
set -e

COMMIT="$1"

LAST_TAG=$(git describe --abbrev=0 --tags "$COMMIT")

echo $LAST_TAG
