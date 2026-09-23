#!/usr/bin/env bash
set -e
if ls PAYLOAD-*.txt >/dev/null 2>&1 && grep -q FORBIDDEN PAYLOAD-*.txt; then
  echo "R1-POLICY-VIOLATION: forbidden content present"; exit 1
fi
echo "R1-POLICY-OK"
