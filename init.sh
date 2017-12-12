#!/usr/bin/env sh

set -eu

cd /tmp

wget $URL

SCRIPT_NAME=`basename $URL`
exec python3 $SCRIPT_NAME
