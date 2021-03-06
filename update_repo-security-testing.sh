#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 <qubes-release>" >&2
    exit 1
fi

REPOS_TO_UPDATE="$1/vm/dists/*-securitytesting"

. `dirname $0`/update_repo.sh

if [ "$AUTOMATIC_UPLOAD" = 1 ]; then
    `dirname $0`/sync_qubes-os.org_repo.sh "$1"
fi
