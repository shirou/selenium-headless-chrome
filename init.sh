#!/usr/bin/env sh

set -eu

cd /tmp

aws s3 cp $S3_URL /tmp

SCRIPT_NAME=`basename $S3_URL`
exec python3 $SCRIPT_NAME
