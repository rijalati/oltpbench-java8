#!/bin/sh

set -e

BENCH=$0
TEMPLATE=$1


docker run oltpbench-java8 -b ${BENCH} -c ${TMPLDIR}/${TEMPLATE} \
       --clear true --create --true --execute true --load true

exit 0
