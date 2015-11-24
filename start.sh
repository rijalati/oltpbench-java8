#!/bin/sh

set -e

TEMPLATE=$1
BENCH=${TEMPLATE##*-}
BENCH=${BENCH%.xml}

docker run -d oltpbench-java8 -b ${BENCH} -c /oltpbench/templates/${TEMPLATE} \
       --clear true --create --true --execute true --load true

exit 0
