#!/usr/bin/env bash

set -e

./cookbook/visualizations_helper.sh
./.ci/build-all.sh
