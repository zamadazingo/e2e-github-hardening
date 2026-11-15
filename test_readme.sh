#!/bin/sh
# Test: README mentions that greet.sh prints a greeting (issue #3)
readme="$(dirname "$0")/README.md"
if grep -q 'greet\.sh.*prints a greeting' "$readme"; then
  echo "ok"
else
  echo "FAIL: README.md does not say that greet.sh prints a greeting" >&2
  exit 1
fi
