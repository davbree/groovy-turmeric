#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://dev-api.stackbit.com/pull/603b6f480c5f48001686b5df

# build site
hugo

echo "stackbit-build.sh: finished build"
