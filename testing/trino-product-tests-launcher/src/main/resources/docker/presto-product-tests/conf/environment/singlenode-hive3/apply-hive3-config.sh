#!/bin/bash

set -exuo pipefail

fail() {
  echo "$(basename "$0"): $*" >&2
  exit 1
}

echo "Applying Hive3 hive-site configuration overrides"

apply-site-xml-override /opt/hive/conf/hive-site.xml "/docker/presto-product-tests/conf/environment/singlenode-hive3/hive-site-overrides.xml" || fail "Could not apply hive-site-overrides.xml"
