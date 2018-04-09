#!/bin/bash

set -euo pipefail

BASEDIR="$(cd $(dirname $0)/.. && pwd)"

#git submodule update --init --recursive

$BASEDIR/src/github.com/julz/cube/launcher/bin/build-cubefs.sh

bosh add-blob $BASEDIR/src/github.com/julz/cube/launcher/image/cubefs.tar cubefs/cubefs.tar
