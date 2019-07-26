#!/bin/bash

set -ex

printenv

if [[ ${MACOSX_DEPLOYMENT_TARGET} != "" ]]; then
    # macOS
    python -m pip install . -vv \
      --install-option="build_ext" \
      --install-option="-DCMAKE_OSX_DEPLOYMENT_TARGET=${MACOSX_DEPLOYMENT_TARGET}"
else
    # Linux
    python -m pip install . -vv
fi
